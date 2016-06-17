class User < ActiveRecord::Base
	#Defining different roles
	enum role: [:Admin, :User, :Guest]
	#Users can only create one scholarship application
	has_one :applications
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
