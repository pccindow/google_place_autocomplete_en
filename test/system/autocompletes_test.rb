require "application_system_test_case"

class AutocompletesTest < ApplicationSystemTestCase
  setup do
    @autocomplete = autocompletes(:one)
  end

  test "visiting the index" do
    visit autocompletes_url
    assert_selector "h1", text: "Autocompletes"
  end

  test "creating a Autocomplete" do
    visit autocompletes_url
    click_on "New Autocomplete"

    fill_in "Address", with: @autocomplete.address
    fill_in "Administrative area level 1", with: @autocomplete.administrative_area_level_1
    fill_in "Country", with: @autocomplete.country
    fill_in "Locality", with: @autocomplete.locality
    fill_in "Postal code", with: @autocomplete.postal_code
    fill_in "Route", with: @autocomplete.route
    fill_in "Street number", with: @autocomplete.street_number
    click_on "Create Autocomplete"

    assert_text "Autocomplete was successfully created"
    click_on "Back"
  end

  test "updating a Autocomplete" do
    visit autocompletes_url
    click_on "Edit", match: :first

    fill_in "Address", with: @autocomplete.address
    fill_in "Administrative area level 1", with: @autocomplete.administrative_area_level_1
    fill_in "Country", with: @autocomplete.country
    fill_in "Locality", with: @autocomplete.locality
    fill_in "Postal code", with: @autocomplete.postal_code
    fill_in "Route", with: @autocomplete.route
    fill_in "Street number", with: @autocomplete.street_number
    click_on "Update Autocomplete"

    assert_text "Autocomplete was successfully updated"
    click_on "Back"
  end

  test "destroying a Autocomplete" do
    visit autocompletes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Autocomplete was successfully destroyed"
  end
end
