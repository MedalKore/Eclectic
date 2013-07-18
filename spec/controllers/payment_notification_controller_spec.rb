require 'spec_helper'

describe PaymentNotificationController do

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end

    # it "instantiates a PaymentNotification object" do
    # 	pnc = PaymentNotificationController.new
    # 	pnc.create
    # end
  end

end
