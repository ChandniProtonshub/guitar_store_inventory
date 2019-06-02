require "application_system_test_case"

class GuitarPicksTest < ApplicationSystemTestCase
  setup do
    @guitar_pick = guitar_picks(:one)
  end

  test "visiting the index" do
    visit guitar_picks_url
    assert_selector "h1", text: "Guitar Picks"
  end

  test "creating a Guitar pick" do
    visit guitar_picks_url
    click_on "New Guitar Pick"

    fill_in "For Guitar Type", with: @guitar_pick.for_guitar_type
    fill_in "Guitar", with: @guitar_pick.guitar_id
    fill_in "User", with: @guitar_pick.user_id
    click_on "Create Guitar pick"

    assert_text "Guitar pick was successfully created"
    click_on "Back"
  end

  test "updating a Guitar pick" do
    visit guitar_picks_url
    click_on "Edit", match: :first

    fill_in "For Guitar Type", with: @guitar_pick.for_guitar_type
    fill_in "Guitar", with: @guitar_pick.guitar_id
    fill_in "User", with: @guitar_pick.user_id
    click_on "Update Guitar pick"

    assert_text "Guitar pick was successfully updated"
    click_on "Back"
  end

  test "destroying a Guitar pick" do
    visit guitar_picks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guitar pick was successfully destroyed"
  end
end
