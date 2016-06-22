class User < ActiveRecord::Base
	#Defining different roles
	enum role: [:Guest, :User, :Admin]
	#Users can only have one scholarship application
	has_one :applications
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
