require 'test_helper'

class AccountServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_service = account_services(:one)
  end

  test "should get index" do
    get account_services_url
    assert_response :success
  end

  test "should get new" do
    get new_account_service_url
    assert_response :success
  end

  test "should create account_service" do
    assert_difference('AccountService.count') do
      post account_services_url, params: { account_service: { collect_type: @account_service.collect_type, comments: @account_service.comments, pay_date: @account_service.pay_date, value: @account_service.value } }
    end

    assert_redirected_to account_service_url(AccountService.last)
  end

  test "should show account_service" do
    get account_service_url(@account_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_service_url(@account_service)
    assert_response :success
  end

  test "should update account_service" do
    patch account_service_url(@account_service), params: { account_service: { collect_type: @account_service.collect_type, comments: @account_service.comments, pay_date: @account_service.pay_date, value: @account_service.value } }
    assert_redirected_to account_service_url(@account_service)
  end

  test "should destroy account_service" do
    assert_difference('AccountService.count', -1) do
      delete account_service_url(@account_service)
    end

    assert_redirected_to account_services_url
  end
end
