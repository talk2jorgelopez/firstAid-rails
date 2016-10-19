class SearchbymobileController < ApplicationController
    def emergency
      @firstaids=Firstaid.all
      if params[:search]
        @firstaids = Firstaid.search(params[:search]).order("created_at DESC")
        render 'searchbymobile/emergency_result' #Redirect to the page no flash hash
      else
        render 'searchbymobile/emergency' #Redirect to the page no flash hash
      end
    end

    def emergency_result

    end

    def symptoms
      @symptoms = Symptom.all
      if params[:search]
        @symptoms = Symptom.search(params[:search]).order("created_at DESC")
        render 'searchbymobile/symptoms_result' #Redirect to the page no flash hash
      else
        render 'searchbymobile/symptoms' #Redirect to the page no flash hash
      end
    end

    def symptoms_result

    end

    def vitals
      @vitals = Vital.all
      if params[:search]
        @vitals = Vital.search(params[:search]).order("created_at DESC")
        render 'searchbymobile/vitals_result' #Redirect to the page no flash hash
      else
        render 'searchbymobile/vitals' #Redirect to the page no flash hash
      end
    end

    def vitals_result

    end
  end
