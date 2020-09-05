require 'test_helper'

class GolvesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get golves_index_url
    assert_response :success
  end

  test "should get new" do
    get golves_new_url
    assert_response :success
  end

  test "should get create" do
    get golves_create_url
    assert_response :success
  end

  test "should get show" do
    get golves_show_url
    assert_response :success
  end

end
