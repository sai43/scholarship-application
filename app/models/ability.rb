class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    can :read Application, Application.all do |application|
    	application.owner == current_user
  end
end
