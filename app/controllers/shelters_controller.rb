class SheltersController < ApplicationController

    def index
      @shelters = Shelter.all 
    end

    def show
      @shelter = Shelter.find(params[:id])
    end

    def Manhattan
      render :Manhattan
    end

    def Bronx
      render :Bronx
    end

    def Queens
      render :Queens
    end

    def Brooklyn
      render :Brooklyn
    end



end
