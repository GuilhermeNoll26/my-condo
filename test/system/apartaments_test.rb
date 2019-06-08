require "application_system_test_case"

class ApartamentsTest < ApplicationSystemTestCase
  setup do
    @apartament = apartaments(:one)
  end

  test "visiting the index" do
    visit apartaments_url
    assert_selector "h1", text: "Apartaments"
  end

  test "creating a Apartament" do
    visit apartaments_url
    click_on "New Apartament"

    fill_in "Notes", with: @apartament.notes
    fill_in "Number", with: @apartament.number
    fill_in "Ocupation status", with: @apartament.ocupation_status
    click_on "Create Apartament"

    assert_text "Apartament was successfully created"
    click_on "Back"
  end

  test "updating a Apartament" do
    visit apartaments_url
    click_on "Edit", match: :first

    fill_in "Notes", with: @apartament.notes
    fill_in "Number", with: @apartament.number
    fill_in "Ocupation status", with: @apartament.ocupation_status
    click_on "Update Apartament"

    assert_text "Apartament was successfully updated"
    click_on "Back"
  end

  test "destroying a Apartament" do
    visit apartaments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apartament was successfully destroyed"
  end
end
