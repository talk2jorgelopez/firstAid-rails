class Vital < ActiveRecord::Base
	has_many :firstaids

	def self.search(search)
		where("vital_type LIKE ?", "%#{search}%")
	end
end
