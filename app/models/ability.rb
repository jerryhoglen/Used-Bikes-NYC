class Ability
  include CanCan::Ability

 def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    can :create, Comment
    can :read, Comment
    can :read, Product

    #can :manage, Order, id: user.order.id
  end
end
