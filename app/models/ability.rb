# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    if user.present?
      if user.admin?
        can :manage, User
        can :manage, Article
      else
        can :manage, Article, user_id: user.id
      end
    end
    
  end
end
