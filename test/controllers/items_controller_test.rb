require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get cart" do
    get :cart
    assert_response :success
  end

  test "should get checkout" do
    get :checkout
    assert_response :success
  end

  test "should get receipt" do
    get :receipt
    assert_response :success
  end

end
