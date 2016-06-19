class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    	if user.role = 1
    		can :manage, :all
    	elsif user.role = 2
            can :manage, Application
            can :manage, User
        else
            can :read, Static_Page
    	end
    end
end