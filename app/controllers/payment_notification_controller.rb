class PaymentNotificationController < ApplicationController
	protect_from_forgery except: [:create]

  def create
      PaymentNotification.create!(
        params: params,
        cart_id: params[:invoice],
        status: params[:payment_status],
        transaction_id: params[:txn_id])
    	Order.create!(user_id: current_user.id, cart_id: params[:invoice])
    	redirect_to :root #render nothing: true
  end
end
