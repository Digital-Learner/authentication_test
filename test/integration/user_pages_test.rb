require 'test_helper'

class UserPagesTest < ActionDispatch::IntegrationTest

  test "routes to signup page when register link followed" do
    get '/registration'
    assert_response :success
  end

  test "create a new user" do
    assert_difference('User.count') do
      post_via_redirect "/users", :user => { :name => 'bobsyouruncle', :email => 'bob@gmail.com' }
    end
    assert_equal '/', path 
    assert_equal "Welcome bobsyouruncle!", flash[:notice]
  end
end





