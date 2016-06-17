class Application < ActiveRecord::Base
	belongs_to :user

	#User must fully fill out application
	validates :name, presence: true
	validates :gender, presence: true
	validates :date_of_birth, presence: true
	validates :gpa, presence: true
	validates :university, presence: true
	validates :address, presence: true
	validates :state, presence: true
end
