require "application_system_test_case"

class BestsTest < ApplicationSystemTestCase
  setup do
    @best = bests(:one)
  end

  test "visiting the index" do
    visit bests_url
    assert_selector "h1", text: "Bests"
  end

  test "creating a Best" do
    visit bests_url
    click_on "New Best"

    fill_in "Best", with: @best.best
    click_on "Create Best"

    assert_text "Best was successfully created"
    click_on "Back"
  end

  test "updating a Best" do
    visit bests_url
    click_on "Edit", match: :first

    fill_in "Best", with: @best.best
    click_on "Update Best"

    assert_text "Best was successfully updated"
    click_on "Back"
  end

  test "destroying a Best" do
    visit bests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Best was successfully destroyed"
  end
end
