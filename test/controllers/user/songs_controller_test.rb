require "test_helper"

class User::SongsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_songs_new_url
    assert_response :success
  end

  test "should get create" do
    get user_songs_create_url
    assert_response :success
  end

  test "should get edit" do
    get user_songs_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_songs_update_url
    assert_response :success
  end

  test "should get show" do
    get user_songs_show_url
    assert_response :success
  end

  test "should get index" do
    get user_songs_index_url
    assert_response :success
  end

  test "should get destroy" do
    get user_songs_destroy_url
    assert_response :success
  end
end
