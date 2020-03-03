class Appointment < ApplicationRecord
    has_many :users
    has_many :pets 

end
