require 'test_helper'

class PeopleManagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get people_manages_home_url
    assert_response :success
  end

end
