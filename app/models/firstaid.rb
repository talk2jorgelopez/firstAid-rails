class Firstaid < ActiveRecord::Base
	belongs_to :symptom
	belongs_to :vital
	belongs_to :severity

	def self.search(search)
		where("firstAidName LIKE ?", "%#{search}%")
		#where("firstAidName.symptoms.symptom_type LIKE ?", "%#{search}%")
	end
end
