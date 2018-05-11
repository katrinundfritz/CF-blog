class Ability
  include CanCan::Ability

  def initialize(user)
    can :create, Comment
    if user.present?
      can :manage, User, id: user.id
      if user.author?  # additional permissions for administrators
        can :manage, Article
      end
      if user.moderator?  # additional permissions for administrators
        can :destroy, Comment
        can :manage, User
        can :update, Comment, :reviewed
      end
    end
  end

end
