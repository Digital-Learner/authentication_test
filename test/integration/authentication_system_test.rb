require 'test_helper'

class AuthenticationSystemTest < ActionDispatch::IntegrationTest

  test "user can login to applicaton" do
    get '/login'
    assert_response :success
  end
end
