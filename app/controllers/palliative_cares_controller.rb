class PalliativeCaresController < ApplicationController
  before_action :set_palliative_care, only: [:show, :edit, :update, :destroy]

  # GET /palliative_cares
  # GET /palliative_cares.json
  def index
    @palliative_cares = PalliativeCare.all
  end

  # GET /palliative_cares/1
  # GET /palliative_cares/1.json
  def show
  end

  # GET /palliative_cares/new
  def new
    @palliative_care = PalliativeCare.new
  end

  # GET /palliative_cares/1/edit
  def edit
  end

  # POST /palliative_cares
  # POST /palliative_cares.json
  def create
    @palliative_care = PalliativeCare.new(palliative_care_params)

    respond_to do |format|
      if @palliative_care.save
        format.html { redirect_to @palliative_care, notice: 'Palliative care was successfully created.' }
        format.json { render :show, status: :created, location: @palliative_care }
      else
        format.html { render :new }
        format.json { render json: @palliative_care.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palliative_cares/1
  # PATCH/PUT /palliative_cares/1.json
  def update
    respond_to do |format|
      if @palliative_care.update(palliative_care_params)
        format.html { redirect_to @palliative_care, notice: 'Palliative care was successfully updated.' }
        format.json { render :show, status: :ok, location: @palliative_care }
      else
        format.html { render :edit }
        format.json { render json: @palliative_care.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palliative_cares/1
  # DELETE /palliative_cares/1.json
  def destroy
    @palliative_care.destroy
    respond_to do |format|
      format.html { redirect_to palliative_cares_url, notice: 'Palliative care was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palliative_care
      @palliative_care = PalliativeCare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palliative_care_params
      params.require(:palliative_care).permit(:pCare_title, :pCare_para1, :pCare_para2)
    end
end
