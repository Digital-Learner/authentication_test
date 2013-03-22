require 'test_helper'

class UserPagesTest < ActionDispatch::IntegrationTest

  test "routes to signup page when register link followed" do
    get '/registration'
    assert_response :success
  end
end
