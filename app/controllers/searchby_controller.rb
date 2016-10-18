class SearchbyController < ApplicationController
	#before_action :set_firstaid

	def index


		#@vitals = Vital.all
	end

	def firstaids
		@firstaids=Firstaid.all
		if params[:search]
			@firstaids = Firstaid.search(params[:search]).order("created_at DESC")
			render 'searchby/firstaids_result'
		else
			render 'searchby/firstaids'
		end
	end

	def firstaids_result

	end

	def symptoms
		@symptoms = Symptom.all
		if params[:search]
			@symptoms = Symptom.search(params[:search]).order("created_at DESC")
			render 'searchby/symptoms_result'
		else
			render 'searchby/symptoms'
		end
	end

	def symptoms_result

	end

	def vitals
		@vitals = Vital.all
		if params[:search]
			@vitals = Vital.search(params[:search]).order("created_at DESC")
			render 'searchby/vitals_result'
		else
			render 'searchby/vitals'
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
