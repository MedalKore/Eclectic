require 'test_helper'

class AccountControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
