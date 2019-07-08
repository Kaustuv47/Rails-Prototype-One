require "application_system_test_case"

class MotherboardsTest < ApplicationSystemTestCase
  setup do
    @motherboard = motherboards(:one)
  end

  test "visiting the index" do
    visit motherboards_url
    assert_selector "h1", text: "Motherboards"
  end

  test "creating a Motherboard" do
    visit motherboards_url
    click_on "New Motherboard"

    fill_in "Manufacturer", with: @motherboard.Manufacturer
    fill_in "Modelname", with: @motherboard.ModelName
    fill_in "Ramfrequency", with: @motherboard.RamFrequency
    fill_in "Ramgeneration", with: @motherboard.RamGeneration
    click_on "Create Motherboard"

    assert_text "Motherboard was successfully created"
    click_on "Back"
  end

  test "updating a Motherboard" do
    visit motherboards_url
    click_on "Edit", match: :first

    fill_in "Manufacturer", with: @motherboard.Manufacturer
    fill_in "Modelname", with: @motherboard.ModelName
    fill_in "Ramfrequency", with: @motherboard.RamFrequency
    fill_in "Ramgeneration", with: @motherboard.RamGeneration
    click_on "Update Motherboard"

    assert_text "Motherboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Motherboard" do
    visit motherboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Motherboard was successfully destroyed"
  end
end
