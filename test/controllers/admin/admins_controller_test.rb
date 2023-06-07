require "test_helper"

class Admin::AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_admins_index_url
    assert_response :success
  end

  test "should get update" do
    get admin_admins_update_url
    assert_response :success
  end

  test "should get withdrawal" do
    get admin_admins_withdrawal_url
    assert_response :success
  end
end
