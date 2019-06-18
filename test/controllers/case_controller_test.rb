require 'test_helper'

class CaseControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get case_show_url
    assert_response :success
  end

  test "should get index" do
    get case_index_url
    assert_response :success
  end

  test "should get edit" do
    get case_edit_url
    assert_response :success
  end

  test "should get update" do
    get case_update_url
    assert_response :success
  end

  test "should get new" do
    get case_new_url
    assert_response :success
  end

  test "should get destroy" do
    get case_destroy_url
    assert_response :success
  end

  test "should get create" do
    get case_create_url
    assert_response :success
  end

end
