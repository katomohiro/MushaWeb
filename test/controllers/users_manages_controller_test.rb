require 'test_helper'

class UsersManagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get users_manages_home_url
    assert_response :success
  end

end
