require 'test_helper'

class Apn::NotificationsControllerTest < ActionController::TestCase
  setup do
    @apn_device ||= APN::Device.create!(token: "00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000")
    @apn_notification = APN::Notification.create!(device: @apn_device, alert: "Hello Test", badge: 22)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apn_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apn_notification" do
    assert_difference('APN::Notification.count') do
      post :create, :apn_notification => @apn_notification.attributes
    end

    assert_redirected_to apn_notification_path(assigns(:apn_notification))
  end

  test "should show apn_notification" do
    get :show, :id => @apn_notification.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @apn_notification.to_param
    assert_response :success
  end

  test "should update apn_notification" do
    put :update, :id => @apn_notification.to_param, :apn_notification => @apn_notification.attributes
    assert_redirected_to apn_notification_path(assigns(:apn_notification))
  end

  test "should destroy apn_notification" do
    assert_difference('APN::Notification.count', -1) do
      delete :destroy, :id => @apn_notification.to_param
    end

    assert_redirected_to apn_notifications_path
  end
end
