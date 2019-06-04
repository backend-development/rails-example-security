require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "fixture valid" do
    @user = users(:one)
    assert @user.valid?
  end
end
