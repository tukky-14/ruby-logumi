require "test_helper"

class GummiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gummies_index_url
    assert_response :success
  end

  test "should get new" do
    get gummies_new_url
    assert_response :success
  end

  test "should get create" do
    get gummies_create_url
    assert_response :success
  end

  test "should get edit" do
    get gummies_edit_url
    assert_response :success
  end

  test "should get update" do
    get gummies_update_url
    assert_response :success
  end

  test "should get show" do
    get gummies_show_url
    assert_response :success
  end

  test "should get destroy" do
    get gummies_destroy_url
    assert_response :success
  end
end
