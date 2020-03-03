class AppointmentsController < ApplicationController


    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment.new
    end

    def create
        @appointment = Appointment.create(appointment_params)

        redirect_to @appointment
    end

    private

    def appointments_params
        params.require.(:appointment).permit(:user_id, :pet_id)
        
    end
    
end
