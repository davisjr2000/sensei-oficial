require 'test_helper'

class SenseisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get senseis_index_url
    assert_response :success
  end

  test "should get create" do
    get senseis_create_url
    assert_response :success
  end

  test "should get new" do
    get senseis_new_url
    assert_response :success
  end

  test "should get edit" do
    get senseis_edit_url
    assert_response :success
  end

  test "should get show" do
    get senseis_show_url
    assert_response :success
  end

  test "should get update" do
    get senseis_update_url
    assert_response :success
  end

  test "should get destroy" do
    get senseis_destroy_url
    assert_response :success
  end

end
