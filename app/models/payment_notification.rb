class PaymentNotification < ActiveRecord::Base
  belongs_to :cart
  serialize :params
  after_create :completed


  private

  def completed
  	if status == "Completed"
  		cart.update_attribute(completed: true)
  	end
  end
end
