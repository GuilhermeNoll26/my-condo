require "application_system_test_case"

class AccountServicesTest < ApplicationSystemTestCase
  setup do
    @account_service = account_services(:one)
  end

  test "visiting the index" do
    visit account_services_url
    assert_selector "h1", text: "Account Services"
  end

  test "creating a Account service" do
    visit account_services_url
    click_on "New Account Service"

    fill_in "Collect type", with: @account_service.collect_type
    fill_in "Comments", with: @account_service.comments
    fill_in "Pay date", with: @account_service.pay_date
    fill_in "Value", with: @account_service.value
    click_on "Create Account service"

    assert_text "Account service was successfully created"
    click_on "Back"
  end

  test "updating a Account service" do
    visit account_services_url
    click_on "Edit", match: :first

    fill_in "Collect type", with: @account_service.collect_type
    fill_in "Comments", with: @account_service.comments
    fill_in "Pay date", with: @account_service.pay_date
    fill_in "Value", with: @account_service.value
    click_on "Update Account service"

    assert_text "Account service was successfully updated"
    click_on "Back"
  end

  test "destroying a Account service" do
    visit account_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account service was successfully destroyed"
  end
end
