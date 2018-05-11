class Ability
  include CanCan::Ability

  def initialize(user)
    can :create, Comment
    if user.present?
      can :manage, User, id: user.id
      can :create, Article
      can :update, Article
      if user.admin?  # additional permissions for administrators
        can :destroy, Comment
        can :manage, User
      end
    end
  end

end
