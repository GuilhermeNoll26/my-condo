require 'test_helper'

class CondoAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condo_account = condo_accounts(:one)
  end

  test "should get index" do
    get condo_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_condo_account_url
    assert_response :success
  end

  test "should create condo_account" do
    assert_difference('CondoAccount.count') do
      post condo_accounts_url, params: { condo_account: {  } }
    end

    assert_redirected_to condo_account_url(CondoAccount.last)
  end

  test "should show condo_account" do
    get condo_account_url(@condo_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_condo_account_url(@condo_account)
    assert_response :success
  end

  test "should update condo_account" do
    patch condo_account_url(@condo_account), params: { condo_account: {  } }
    assert_redirected_to condo_account_url(@condo_account)
  end

  test "should destroy condo_account" do
    assert_difference('CondoAccount.count', -1) do
      delete condo_account_url(@condo_account)
    end

    assert_redirected_to condo_accounts_url
  end
end
