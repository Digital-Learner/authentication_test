require 'test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest

  test "routes to and displays welcome page" do
    get '/'
    assert_response :success
    assert_template :home
  end

end
