require "application_system_test_case"

class CondoAccountsTest < ApplicationSystemTestCase
  setup do
    @condo_account = condo_accounts(:one)
  end

  test "visiting the index" do
    visit condo_accounts_url
    assert_selector "h1", text: "Condo Accounts"
  end

  test "creating a Condo account" do
    visit condo_accounts_url
    click_on "New Condo Account"

    click_on "Create Condo account"

    assert_text "Condo account was successfully created"
    click_on "Back"
  end

  test "updating a Condo account" do
    visit condo_accounts_url
    click_on "Edit", match: :first

    click_on "Update Condo account"

    assert_text "Condo account was successfully updated"
    click_on "Back"
  end

  test "destroying a Condo account" do
    visit condo_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Condo account was successfully destroyed"
  end
end
