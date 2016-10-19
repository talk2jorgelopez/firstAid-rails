class SearchbyController < ApplicationController

	def index
		#empty container
	end

	def firstaids
		@firstaids=Firstaid.all
		if params[:search]
			@firstaids = Firstaid.search(params[:search]).order("created_at DESC")
			render 'searchby/firstaids_result' #Redirect to the page no flash hash
		else
			render 'searchby/firstaids' #Redirect to the page no flash hash
		end
	end

	def firstaids_result

	end

	def symptoms
		@symptoms = Symptom.all
		if params[:search]
			@symptoms = Symptom.search(params[:search]).order("created_at DESC")
			render 'searchby/symptoms_result' #Redirect to the page no flash hash
		else
			render 'searchby/symptoms' #Redirect to the page no flash hash
		end
	end

	def symptoms_result

	end

	def vitals
		@vitals = Vital.all
		if params[:search]
			@vitals = Vital.search(params[:search]).order("created_at DESC")
			render 'searchby/vitals_result' #Redirect to the page no flash hash
		else
			render 'searchby/vitals' #Redirect to the page no flash hash
		end
	end

	def vitals_result

	end

=begin
	private

	#def set_firstaid
	#	@firstaid = Firstaid.find(params[:id])
	#end

	# Never trust parameters from the scary internet, only allow the white list through.
	def firstaid_params
		params.require(:firstaid).permit(:firstAidName, :firstAidDescription, :symptom_id, :vital_id, :severity_id)
	end
=end
end
