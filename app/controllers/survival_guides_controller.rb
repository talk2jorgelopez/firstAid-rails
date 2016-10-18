class SurvivalGuidesController < ApplicationController
  before_action :set_survival_guide, only: [:show, :edit, :update, :destroy]

  # GET /survival_guides
  # GET /survival_guides.json
  def index
    @survival_guides = SurvivalGuide.all
  end

  # GET /survival_guides/1
  # GET /survival_guides/1.json
  def show
  end

  # GET /survival_guides/new
  def new
    @survival_guide = SurvivalGuide.new
  end

  # GET /survival_guides/1/edit
  def edit
  end

  # POST /survival_guides
  # POST /survival_guides.json
  def create
    @survival_guide = SurvivalGuide.new(survival_guide_params)

    respond_to do |format|
      if @survival_guide.save
        format.html { redirect_to @survival_guide, notice: 'Survival guide was successfully created.' }
        format.json { render :show, status: :created, location: @survival_guide }
      else
        format.html { render :new }
        format.json { render json: @survival_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survival_guides/1
  # PATCH/PUT /survival_guides/1.json
  def update
    respond_to do |format|
      if @survival_guide.update(survival_guide_params)
        format.html { redirect_to @survival_guide, notice: 'Survival guide was successfully updated.' }
        format.json { render :show, status: :ok, location: @survival_guide }
      else
        format.html { render :edit }
        format.json { render json: @survival_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survival_guides/1
  # DELETE /survival_guides/1.json
  def destroy
    @survival_guide.destroy
    respond_to do |format|
      format.html { redirect_to survival_guides_url, notice: 'Survival guide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survival_guide
      @survival_guide = SurvivalGuide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survival_guide_params
      params.require(:survival_guide).permit(:guide_title, :guide_para1, :guide_para2)
    end
end
