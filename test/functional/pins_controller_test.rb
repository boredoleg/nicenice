require 'test_helper'

class PinsControllerTest < ActionController::TestCase
  setup do
    @pin = pins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pin" do
    assert_difference('Pin.count') do
      post :create, pin: { contact_email: @pin.contact_email, contact_phone: @pin.contact_phone, product_description: @pin.product_description, product_name: @pin.product_name, product_price: @pin.product_price }
    end

    assert_redirected_to pin_path(assigns(:pin))
  end

  test "should show pin" do
    get :show, id: @pin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pin
    assert_response :success
  end

  test "should update pin" do
    put :update, id: @pin, pin: { contact_email: @pin.contact_email, contact_phone: @pin.contact_phone, product_description: @pin.product_description, product_name: @pin.product_name, product_price: @pin.product_price }
    assert_redirected_to pin_path(assigns(:pin))
  end

  test "should destroy pin" do
    assert_difference('Pin.count', -1) do
      delete :destroy, id: @pin
    end

    assert_redirected_to pins_path
  end
end
