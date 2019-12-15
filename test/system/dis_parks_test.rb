require "application_system_test_case"

class DisParksTest < ApplicationSystemTestCase
  setup do
    @dis_park = dis_parks(:one)
  end

  test "visiting the index" do
    visit dis_parks_url
    assert_selector "h1", text: "Dis Parks"
  end

  test "creating a Dis park" do
    visit dis_parks_url
    click_on "New Dis Park"

    fill_in "Car reg", with: @dis_park.car_reg
    fill_in "Disability", with: @dis_park.disability
    fill_in "Dname", with: @dis_park.dname
    fill_in "Gender", with: @dis_park.gender
    click_on "Create Dis park"

    assert_text "Dis park was successfully created"
    click_on "Back"
  end

  test "updating a Dis park" do
    visit dis_parks_url
    click_on "Edit", match: :first

    fill_in "Car reg", with: @dis_park.car_reg
    fill_in "Disability", with: @dis_park.disability
    fill_in "Dname", with: @dis_park.dname
    fill_in "Gender", with: @dis_park.gender
    click_on "Update Dis park"

    assert_text "Dis park was successfully updated"
    click_on "Back"
  end

  test "destroying a Dis park" do
    visit dis_parks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dis park was successfully destroyed"
  end
end
