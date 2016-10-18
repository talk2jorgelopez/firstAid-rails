class HowTosController < ApplicationController
	before_action :set_how_to, only: [:show, :edit, :update, :destroy]

	# GET /how_tos
	def index
		@how_tos = HowTo.all
		if params[:search]
			@how_tos = HowTo.search(params[:search]).order("created_at DESC")
		else
			@how_tos = HowTo.all.order("created_at DESC")
		end
	end

	# GET /how_tos/1
	def show
	end

	# GET /how_tos/new
	def new
		@how_to = HowTo.new
	end

	# GET /how_tos/1/edit
	def edit
	end

	# POST /how_tos
	def create
		@how_to = HowTo.new(how_to_params)

		if @how_to.save
			redirect_to @how_to, notice: 'How to was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /how_tos/1
	def update
		if @how_to.update(how_to_params)
			redirect_to @how_to, notice: 'How to was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /how_tos/1
	def destroy
		@how_to.destroy
		redirect_to how_tos_url, notice: 'How to was successfully destroyed.'
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_how_to
		@how_to = HowTo.find(params[:id])
	end

	# Only allow a trusted parameter "white list" through.
	def how_to_params
		params.require(:how_to).permit(:how_to_id, :how_to_title, :how_to_url)
	end
end
