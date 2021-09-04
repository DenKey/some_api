require "test_helper"

class Api::StatusControllerTest < ActionDispatch::IntegrationTest
  test "should get static" do
    get api_status_static_url
    assert_response :success
  end

  test "should get production" do
    get api_status_production_url
    assert_response :success
  end

  test "should get test" do
    get api_status_test_url
    assert_response :success
  end

  test "should get development" do
    get api_status_development_url
    assert_response :success
  end
end
