require 'test_helper'

class CupAddOnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cup_add_on = cup_add_ons(:one)
  end

  test "should get index" do
    get cup_add_ons_url
    assert_response :success
  end

  test "should get new" do
    get new_cup_add_on_url
    assert_response :success
  end

  test "should create cup_add_on" do
    assert_difference('CupAddOn.count') do
      post cup_add_ons_url, params: { cup_add_on: { image_url: @cup_add_on.image_url, name: @cup_add_on.name, price: @cup_add_on.price } }
    end

    assert_redirected_to cup_add_on_url(CupAddOn.last)
  end

  test "should show cup_add_on" do
    get cup_add_on_url(@cup_add_on)
    assert_response :success
  end

  test "should get edit" do
    get edit_cup_add_on_url(@cup_add_on)
    assert_response :success
  end

  test "should update cup_add_on" do
    patch cup_add_on_url(@cup_add_on), params: { cup_add_on: { image_url: @cup_add_on.image_url, name: @cup_add_on.name, price: @cup_add_on.price } }
    assert_redirected_to cup_add_on_url(@cup_add_on)
  end

  test "should destroy cup_add_on" do
    assert_difference('CupAddOn.count', -1) do
      delete cup_add_on_url(@cup_add_on)
    end

    assert_redirected_to cup_add_ons_url
  end
end
