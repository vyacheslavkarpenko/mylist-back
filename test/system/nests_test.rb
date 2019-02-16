require "application_system_test_case"

class NestsTest < ApplicationSystemTestCase
  setup do
    @nest = nests(:one)
  end

  test "visiting the index" do
    visit nests_url
    assert_selector "h1", text: "Nests"
  end

  test "creating a Nest" do
    visit nests_url
    click_on "New Nest"

    fill_in "Nest", with: @nest.nest
    click_on "Create Nest"

    assert_text "Nest was successfully created"
    click_on "Back"
  end

  test "updating a Nest" do
    visit nests_url
    click_on "Edit", match: :first

    fill_in "Nest", with: @nest.nest
    click_on "Update Nest"

    assert_text "Nest was successfully updated"
    click_on "Back"
  end

  test "destroying a Nest" do
    visit nests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nest was successfully destroyed"
  end
end
