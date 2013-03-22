require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "name cannot be blank" do
    user = User.new()
    assert_equal false, user.valid?
    refute(user.valid?) 
  end
end
