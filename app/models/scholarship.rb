class Scholarship < ActiveRecord::Base
	belongs_to :user

	validate :one_scholarship, :on => :create

	#User must fully fill out all forms application
	validates :name, presence: true
	validates :gender, presence: true
	validates :date_of_birth, presence: true
	validates :gpa, presence: true
	validates :university, presence: true
	validates :address, presence: true
	validates :state, presence: true

	private
		def one_scholarship
			if user.scholarships.count >= 1
				errors.add(:base, "You can only create one scholarship. Please contact an administrator for further help.")
			end
		end
 end
