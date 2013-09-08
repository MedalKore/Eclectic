class PaymentNotificationController < ApplicationController
	protect_from_forgery except: [:create]

  def create
  	PaymentNotification.create!(params: params.permit, cart_id: params.permit(:invoice), status: params.permit(:payment_status), transaction_id: params.permit(:txn_id))
  	Order.create!(user_id: current_user.id, cart_id: params.permit(:invoice))
  	render nothing: true
  end
end
