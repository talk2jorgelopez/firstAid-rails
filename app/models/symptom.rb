class Symptom < ActiveRecord::Base
	has_many :firstaids

	def self.search(search)
		where("symptom_type LIKE ?", "%#{search}%")
	end
end
