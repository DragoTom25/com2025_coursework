require "application_system_test_case"

class DParkingsTest < ApplicationSystemTestCase
  setup do
    @d_parking = d_parkings(:one)
  end

  test "visiting the index" do
    visit d_parkings_url
    assert_selector "h1", text: "D Parkings"
  end

  test "creating a D parking" do
    visit d_parkings_url
    click_on "New D Parking"

    fill_in "Car plate", with: @d_parking.car_plate
    fill_in "Disability", with: @d_parking.disability
    fill_in "Gender", with: @d_parking.gender
    fill_in "Name", with: @d_parking.name
    click_on "Create D parking"

    assert_text "D parking was successfully created"
    click_on "Back"
  end

  test "updating a D parking" do
    visit d_parkings_url
    click_on "Edit", match: :first

    fill_in "Car plate", with: @d_parking.car_plate
    fill_in "Disability", with: @d_parking.disability
    fill_in "Gender", with: @d_parking.gender
    fill_in "Name", with: @d_parking.name
    click_on "Update D parking"

    assert_text "D parking was successfully updated"
    click_on "Back"
  end

  test "destroying a D parking" do
    visit d_parkings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "D parking was successfully destroyed"
  end
end
