require "test_helper"

class User::OpinionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_opinions_new_url
    assert_response :success
  end

  test "should get create" do
    get user_opinions_create_url
    assert_response :success
  end
end
