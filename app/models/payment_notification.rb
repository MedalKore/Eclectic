class PaymentNotification < ActiveRecord::Base
  attr_accessible :cart_id, :params, :status, :transaction_id
  serialize :params
  after_create :completed


  private

  def completed
  	if status == "Completed"
  		cart.update_attribute(completed: true)
  end
end
