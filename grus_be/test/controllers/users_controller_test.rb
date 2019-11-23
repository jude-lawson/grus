require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get '/users/identifier'
    assert_response :success
  end

end
