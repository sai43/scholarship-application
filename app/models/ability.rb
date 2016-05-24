class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    	if user.admin?
    		can :manage, :all
    	else
    		can :read, Application
    		can :create, Application
    	end
    end
end