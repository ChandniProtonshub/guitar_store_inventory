require "application_system_test_case"

class StrapsTest < ApplicationSystemTestCase
  setup do
    @strap = straps(:one)
  end

  test "visiting the index" do
    visit straps_url
    assert_selector "h1", text: "Straps"
  end

  test "creating a Strap" do
    visit straps_url
    click_on "New Strap"

    fill_in "Guitar", with: @strap.guitar_id
    fill_in "In Stock Quantity", with: @strap.in_stock_quantity
    fill_in "Size", with: @strap.size
    fill_in "User", with: @strap.user_id
    click_on "Create Strap"

    assert_text "Strap was successfully created"
    click_on "Back"
  end

  test "updating a Strap" do
    visit straps_url
    click_on "Edit", match: :first

    fill_in "Guitar", with: @strap.guitar_id
    fill_in "In Stock Quantity", with: @strap.in_stock_quantity
    fill_in "Size", with: @strap.size
    fill_in "User", with: @strap.user_id
    click_on "Update Strap"

    assert_text "Strap was successfully updated"
    click_on "Back"
  end

  test "destroying a Strap" do
    visit straps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Strap was successfully destroyed"
  end
end
