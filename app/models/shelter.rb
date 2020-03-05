class Shelter < ApplicationRecord
    has_many :pets 
    has_many :appointments, through: :pets 

    def self.uniq_locations
        self.select(:location).map(&:location).uniq
    end



end
