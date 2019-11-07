require "application_system_test_case"

class NeosTest < ApplicationSystemTestCase
  setup do
    @neo = neos(:one)
  end

  test "visiting the index" do
    visit neos_url
    assert_selector "h1", text: "Neos"
  end

  test "creating a Neo" do
    visit neos_url
    click_on "New Neo"

    click_on "Create Neo"

    assert_text "Neo was successfully created"
    click_on "Back"
  end

  test "updating a Neo" do
    visit neos_url
    click_on "Edit", match: :first

    click_on "Update Neo"

    assert_text "Neo was successfully updated"
    click_on "Back"
  end

  test "destroying a Neo" do
    visit neos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Neo was successfully destroyed"
  end
end
