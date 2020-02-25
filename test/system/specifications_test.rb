require "application_system_test_case"

class SpecificationsTest < ApplicationSystemTestCase
  setup do
    @specification = specifications(:one)
  end

  test "visiting the index" do
    visit specifications_url
    assert_selector "h1", text: "Specifications"
  end

  test "creating a Specification" do
    visit specifications_url
    click_on "New Specification"

    fill_in "Methodinspect", with: @specification.methodinspect
    fill_in "Name", with: @specification.name
    click_on "Create Specification"

    assert_text "Specification was successfully created"
    click_on "Back"
  end

  test "updating a Specification" do
    visit specifications_url
    click_on "Edit", match: :first

    fill_in "Methodinspect", with: @specification.methodinspect
    fill_in "Name", with: @specification.name
    click_on "Update Specification"

    assert_text "Specification was successfully updated"
    click_on "Back"
  end

  test "destroying a Specification" do
    visit specifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specification was successfully destroyed"
  end
end
