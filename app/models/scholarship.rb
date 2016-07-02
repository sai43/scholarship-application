class Scholarship < ActiveRecord::Base
	belongs_to :user

	#Users may only submit one application
	validate :limit_scholarships, :on => :create

	#User must fully fill out all forms application
	validates :name, presence: true
	validates :gender, presence: true
	validates :date_of_birth, presence: true
	validates :gpa, presence: true
	validates :university, presence: true
	validates :address, presence: true
	validates :state, presence: true

	private
	def limit_scholarships
		if user.scholarship.count >= 1
			errors.add(:base, "You can only create #{limit} scholarship.")
    	end
     end
 end
