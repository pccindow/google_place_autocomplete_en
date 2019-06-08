require 'test_helper'

class AutocompletesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autocomplete = autocompletes(:one)
  end

  test "should get index" do
    get autocompletes_url
    assert_response :success
  end

  test "should get new" do
    get new_autocomplete_url
    assert_response :success
  end

  test "should create autocomplete" do
    assert_difference('Autocomplete.count') do
      post autocompletes_url, params: { autocomplete: { address: @autocomplete.address, administrative_area_level_1: @autocomplete.administrative_area_level_1, country: @autocomplete.country, locality: @autocomplete.locality, postal_code: @autocomplete.postal_code, route: @autocomplete.route, street_number: @autocomplete.street_number } }
    end

    assert_redirected_to autocomplete_url(Autocomplete.last)
  end

  test "should show autocomplete" do
    get autocomplete_url(@autocomplete)
    assert_response :success
  end

  test "should get edit" do
    get edit_autocomplete_url(@autocomplete)
    assert_response :success
  end

  test "should update autocomplete" do
    patch autocomplete_url(@autocomplete), params: { autocomplete: { address: @autocomplete.address, administrative_area_level_1: @autocomplete.administrative_area_level_1, country: @autocomplete.country, locality: @autocomplete.locality, postal_code: @autocomplete.postal_code, route: @autocomplete.route, street_number: @autocomplete.street_number } }
    assert_redirected_to autocomplete_url(@autocomplete)
  end

  test "should destroy autocomplete" do
    assert_difference('Autocomplete.count', -1) do
      delete autocomplete_url(@autocomplete)
    end

    assert_redirected_to autocompletes_url
  end
end
