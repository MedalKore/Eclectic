class Cart < ActiveRecord::Base
  has_many :cart_items
  has_many :products, :through => :cart_items
  belongs_to :orders
  

  def add_product(product_id)
  	item = cart_items.find_all_by_product_id(product_id)
  	product = Product.find(product_id)

      if item.size < 1
    		ci = cart_items.create(:product_id => product_id,
    														:amount => 1,
    														:price => product.price)
    	else
    		ci = item.first
    		ci.update_attribute(:amount, ci.amount + 1)
    	end

  	ci
  end

  def remove(product_id)
  	ci = cart_items.find_by_product_id(product_id)
    if !ci.nil?
			ci.amount > 1 ? ci.update_attribute(:amount, ci.amount - 1) : cart_items.destroy(ci.id)
    end
    if cart_items.find_by_product_id(product_id).nil?
      ci = nil
    end

    ci
  end

  def total
  	cart_items.inject(0) {|sum, n| n.price * n.amount + sum}
  end

  def paypal_encrypted(return_url, notify_url)
    values = {
      business: "seller@medalkore.com",
      cmd: "_cart",
      upload: 1,
      return: return_url,
      invoice: id,
      notify_url: notify_url,
      cert_id: "SB53CNN7D3RLA"
    }
    cart_items.each_with_index do |item, index|
      values.merge!({
        "amount_#{index + 1}" => item.price,
        "item_name_#{index + 1}" => item.name(item.product_id),
        "item_number_#{index + 1}" => item.id,
        "quantity_#{index + 1}" => item.amount
        })
    end
    encrypt_for_paypal(values)
  end


  PAYPAL_CERT_PEM = File.read("#{Rails.root}/certs/paypal_cert.pem")
  APP_CERT_PEM = File.read("#{Rails.root}/certs/app_cert.pem")
  APP_KEY_PEM = File.read("#{Rails.root}/certs/app_key.pem")

  def encrypt_for_paypal(values)
    signed = OpenSSL::PKCS7::sign(OpenSSL::X509::Certificate.new(APP_CERT_PEM), OpenSSL::PKey::RSA.new(APP_KEY_PEM, ""), values.map { |k, v| "#{k}=#{v}" }.join("\n"), [], OpenSSL::PKCS7::BINARY)
		OpenSSL::PKCS7::encrypt([OpenSSL::X509::Certificate.new(PAYPAL_CERT_PEM)], signed.to_der, OpenSSL::Cipher::Cipher::new("DES3"), OpenSSL::PKCS7::BINARY).to_s.gsub("\n", "")
  end

  def completed?
  	self[:completed]
  end

end
