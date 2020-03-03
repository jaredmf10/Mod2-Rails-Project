class SheltersController < ApplicationController

    def index
      @shelters = Shelter.all 
    end

    def show
      @shelter = Shelter.find(params[:id])
    end

    # def manhattan_locations
    #     Shelter.all.map do |l|
    #         l.location == 'Manhattan'
    #     end
    # end

end
