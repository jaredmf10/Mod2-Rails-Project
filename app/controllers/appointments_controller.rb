class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.create(appointment_params)
    end

    def edit
    
    end

    def update
    
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
   
        redirect_to new_appointment_path
    end

private

def appointment_params
    params.require(:appointment).permit(:pet_id, :user_id, :date_time)
end

end
