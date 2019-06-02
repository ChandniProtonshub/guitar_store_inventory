require 'test_helper'

class GuitarPicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guitar_pick = guitar_picks(:one)
  end

  test "should get index" do
    get guitar_picks_url
    assert_response :success
  end

  test "should get new" do
    get new_guitar_pick_url
    assert_response :success
  end

  test "should create guitar_pick" do
    assert_difference('GuitarPick.count') do
      post guitar_picks_url, params: { guitar_pick: { for_guitar_type: @guitar_pick.for_guitar_type, guitar_id: @guitar_pick.guitar_id, user_id: @guitar_pick.user_id } }
    end

    assert_redirected_to guitar_pick_url(GuitarPick.last)
  end

  test "should show guitar_pick" do
    get guitar_pick_url(@guitar_pick)
    assert_response :success
  end

  test "should get edit" do
    get edit_guitar_pick_url(@guitar_pick)
    assert_response :success
  end

  test "should update guitar_pick" do
    patch guitar_pick_url(@guitar_pick), params: { guitar_pick: { for_guitar_type: @guitar_pick.for_guitar_type, guitar_id: @guitar_pick.guitar_id, user_id: @guitar_pick.user_id } }
    assert_redirected_to guitar_pick_url(@guitar_pick)
  end

  test "should destroy guitar_pick" do
    assert_difference('GuitarPick.count', -1) do
      delete guitar_pick_url(@guitar_pick)
    end

    assert_redirected_to guitar_picks_url
  end
end
