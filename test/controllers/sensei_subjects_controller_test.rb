require 'test_helper'

class SenseiSubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sensei_subjects_index_url
    assert_response :success
  end

  test "should get create" do
    get sensei_subjects_create_url
    assert_response :success
  end

  test "should get new" do
    get sensei_subjects_new_url
    assert_response :success
  end

  test "should get edit" do
    get sensei_subjects_edit_url
    assert_response :success
  end

  test "should get show" do
    get sensei_subjects_show_url
    assert_response :success
  end

  test "should get update" do
    get sensei_subjects_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sensei_subjects_destroy_url
    assert_response :success
  end

end
