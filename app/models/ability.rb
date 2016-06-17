class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    	if user.role = 1
    		can :manage, :all
    	elsif
            can :manage, Application
            can :manage, User
        else
            can :read, Application
    	end
    end
end