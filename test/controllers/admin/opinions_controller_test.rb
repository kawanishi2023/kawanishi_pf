require "test_helper"

class Admin::OpinionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_opinions_index_url
    assert_response :success
  end
end
