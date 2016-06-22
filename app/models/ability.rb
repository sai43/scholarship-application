class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    	if user.role == "Admin"
    		can :manage, :all
    	elsif user.role == "User"
            can :manage, Application
            can :read, User
        else
            can :read, Static_Page
    	end
    end
end