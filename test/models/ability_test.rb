require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
  test "fixture valid" do
    @article = articles(:one)
    assert @article.valid?
    @user = users(:one)
    assert @user.valid?
  end

  test "everyone can read articles and users" do
    ability = Ability.new(nil)
    assert ability.can?(:read, Article)
    assert ability.can?(:read, articles(:one))
    assert ability.can?(:read, users(:one))
  end


  test "user can read everything and edit own articles" do
    user = users(:two)
    refute user.admin?
    ability = Ability.new(user)
    assert ability.cannot?(:manage, articles(:one))
    assert ability.can?(:manage, articles(:two))
    assert ability.cannot?(:manage, users(:one))
  end  


  test "admin can edit everything" do
    user = users(:one)
    assert user.admin?
    ability = Ability.new(user)
    assert ability.can?(:manage, articles(:one))
    assert ability.can?(:manage, users(:one))
  end    
end
