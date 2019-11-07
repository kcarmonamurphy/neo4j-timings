require 'test_helper'

class NeosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neo = neos(:one)
  end

  test "should get index" do
    get neos_url
    assert_response :success
  end

  test "should get new" do
    get new_neo_url
    assert_response :success
  end

  test "should create neo" do
    assert_difference('Neo.count') do
      post neos_url, params: { neo: {  } }
    end

    assert_redirected_to neo_url(Neo.last)
  end

  test "should show neo" do
    get neo_url(@neo)
    assert_response :success
  end

  test "should get edit" do
    get edit_neo_url(@neo)
    assert_response :success
  end

  test "should update neo" do
    patch neo_url(@neo), params: { neo: {  } }
    assert_redirected_to neo_url(@neo)
  end

  test "should destroy neo" do
    assert_difference('Neo.count', -1) do
      delete neo_url(@neo)
    end

    assert_redirected_to neos_url
  end
end
