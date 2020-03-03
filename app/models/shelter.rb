class Shelter < ApplicationRecord
    has_many :pets 
    has_many :appointments, through: :pets 


end
