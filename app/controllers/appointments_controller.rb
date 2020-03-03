class AppointmentsController < ApplicationController


    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new 
    end

    def create
        @appointment = Appointment.create(appointment_strong_params)

        redirect_to @appointment
    end



private

    def appointment_strong_params
    params.require(:appointment).permit(:user_id, :pet_id)
    end
    
end 
