module SearchbyHelper
	def search_by_firstaid
		@firstaids = Firstaid.all
		def self.search(search)
			where("vital_type LIKE ?", "%#{search}%")
		end
	end

	def search_by_vital
		@vitals = Vitals.all
		if params[:search]
			@vitals = Vital.search(params[:search]).order("created_at DESC")
		else
			@vitals = Vital.all.order("created_at DESC")
		end
	end

	def search_by_symptom
		@symptoms = Symptom.all
		if params[:search]
			@symptoms = Symptom.search(params[:search]).order("created_at DESC")
		else
			@symptoms = Symptom.all.order("created_at DESC")
		end
	end
end
