require "test_helper"

class Admin::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_genres_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_genres_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_genres_create_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_genres_destroy_url
    assert_response :success
  end
end
