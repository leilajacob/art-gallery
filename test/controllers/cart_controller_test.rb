require 'test_helper'

class CartControllerTest < ActionController::TestCase
  test "should get addadd_to_cart" do
    get :addadd_to_cart
    assert_response :success
  end

  test "should get view_order" do
    get :view_order
    assert_response :success
  end

  test "should get checkout" do
    get :checkout
    assert_response :success
  end

end
