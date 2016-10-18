class SeveritiesController < ApplicationController
  before_action :set_severity, only: [:show, :edit, :update, :destroy]

  # GET /severities
  # GET /severities.json
  def index
    @severities = Severity.all
  end

  # GET /severities/1
  # GET /severities/1.json
  def show
  end

  # GET /severities/new
  def new
    @severity = Severity.new
  end

  # GET /severities/1/edit
  def edit
  end

  # POST /severities
  # POST /severities.json
  def create
    @severity = Severity.new(severity_params)

    respond_to do |format|
      if @severity.save
        format.html { redirect_to @severity, notice: 'Severity was successfully created.' }
        format.json { render :show, status: :created, location: @severity }
      else
        format.html { render :new }
        format.json { render json: @severity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /severities/1
  # PATCH/PUT /severities/1.json
  def update
    respond_to do |format|
      if @severity.update(severity_params)
        format.html { redirect_to @severity, notice: 'Severity was successfully updated.' }
        format.json { render :show, status: :ok, location: @severity }
      else
        format.html { render :edit }
        format.json { render json: @severity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /severities/1
  # DELETE /severities/1.json
  def destroy
    @severity.destroy
    respond_to do |format|
      format.html { redirect_to severities_url, notice: 'Severity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_severity
      @severity = Severity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def severity_params
      params.require(:severity).permit(:severity_level)
    end
end
