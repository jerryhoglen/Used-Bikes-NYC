class Ability
  include CanCan::Ability

  def intitialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
  end
  
end
