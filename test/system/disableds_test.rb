require "application_system_test_case"

class DisabledsTest < ApplicationSystemTestCase
  setup do
    @disabled = disableds(:one)
  end

  test "visiting the index" do
    visit disableds_url
    assert_selector "h1", text: "Disableds"
  end

  test "creating a Disabled" do
    visit disableds_url
    click_on "New Disabled"

    fill_in "Car plate", with: @disabled.car_plate
    fill_in "Disability", with: @disabled.disability
    fill_in "Gender", with: @disabled.gender
    fill_in "Name", with: @disabled.name
    click_on "Create Disabled"

    assert_text "Disabled was successfully created"
    click_on "Back"
  end

  test "updating a Disabled" do
    visit disableds_url
    click_on "Edit", match: :first

    fill_in "Car plate", with: @disabled.car_plate
    fill_in "Disability", with: @disabled.disability
    fill_in "Gender", with: @disabled.gender
    fill_in "Name", with: @disabled.name
    click_on "Update Disabled"

    assert_text "Disabled was successfully updated"
    click_on "Back"
  end

  test "destroying a Disabled" do
    visit disableds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disabled was successfully destroyed"
  end
end
