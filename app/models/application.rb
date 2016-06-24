class Application < ActiveRecord::Base
	belongs_to :user

	#Users may only submit one application
	validate :limit_applications, :on => :create

	#User must fully fill out all forms application
	validates :name, presence: true
	validates :gender, presence: true
	validates :date_of_birth, presence: true
	validates :gpa, presence: true
	validates :university, presence: true
	validates :address, presence: true
	validates :state, presence: true


	private
	def limit_applications
		limit = 1
		if self.user.applications(:reload).count >= limit
			errors.add(:base, "You can only create #{limit} application.")
    		end
     	end
 end
