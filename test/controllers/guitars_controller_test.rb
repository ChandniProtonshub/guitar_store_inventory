require 'test_helper'

class GuitarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guitar = guitars(:one)
  end

  test "should get index" do
    get guitars_url
    assert_response :success
  end

  test "should get new" do
    get new_guitar_url
    assert_response :success
  end

  test "should create guitar" do
    assert_difference('Guitar.count') do
      post guitars_url, params: { guitar: { brand: @guitar.brand, date_purchased: @guitar.date_purchased, date_sold: @guitar.date_sold, guitar_type: @guitar.guitar_type, model: @guitar.model, number_of_strings: @guitar.number_of_strings, price: @guitar.price, serial_number: @guitar.serial_number, user_id: @guitar.user_id } }
    end

    assert_redirected_to guitar_url(Guitar.last)
  end

  test "should show guitar" do
    get guitar_url(@guitar)
    assert_response :success
  end

  test "should get edit" do
    get edit_guitar_url(@guitar)
    assert_response :success
  end

  test "should update guitar" do
    patch guitar_url(@guitar), params: { guitar: { brand: @guitar.brand, date_purchased: @guitar.date_purchased, date_sold: @guitar.date_sold, guitar_type: @guitar.guitar_type, model: @guitar.model, number_of_strings: @guitar.number_of_strings, price: @guitar.price, serial_number: @guitar.serial_number, user_id: @guitar.user_id } }
    assert_redirected_to guitar_url(@guitar)
  end

  test "should destroy guitar" do
    assert_difference('Guitar.count', -1) do
      delete guitar_url(@guitar)
    end

    assert_redirected_to guitars_url
  end
end