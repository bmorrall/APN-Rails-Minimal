require 'test_helper'

class Apn::DevicesControllerTest < ActionController::TestCase
  setup do
    @apn_device ||= APN::Device.create!(token: "00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000")
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apn_devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apn_device" do
    assert_difference('APN::Device.count') do
      post :create, :apn_device => {token: "11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111"}
    end

    assert_redirected_to apn_device_path(assigns(:apn_device))
  end

  test "should show apn_device" do
    get :show, :id => @apn_device.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @apn_device.to_param
    assert_response :success
  end

  test "should update apn_device" do
    put :update, :id => @apn_device.to_param, :apn_device => @apn_device.attributes
    assert_redirected_to apn_device_path(assigns(:apn_device))
  end

  test "should destroy apn_device" do
    assert_difference('APN::Device.count', -1) do
      delete :destroy, :id => @apn_device.to_param
    end

    assert_redirected_to apn_devices_path
  end
end
