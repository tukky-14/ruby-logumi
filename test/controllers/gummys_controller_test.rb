require 'test_helper'

class GummysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gummys_index_url
    assert_response :success
  end

  test "should get new" do
    get gummys_new_url
    assert_response :success
  end

  test "should get create" do
    get gummys_create_url
    assert_response :success
  end

  test "should get show" do
    get gummys_show_url
    assert_response :success
  end

  test "should get edit" do
    get gummys_edit_url
    assert_response :success
  end

  test "should get update" do
    get gummys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gummys_destroy_url
    assert_response :success
  end

end
