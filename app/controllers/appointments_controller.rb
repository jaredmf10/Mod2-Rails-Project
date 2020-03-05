class AppointmentsController < ApplicationController


    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new 

        @users = User.all
        @pets = Pet.all
        @appointments = Appointment.all 
    end

    def create
        @appointment = Appointment.create(appointment_strong_params)

        redirect_to @appointment
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy

        redirect_to appointments_new_path
    end

    def edit
        
    end




private

    def appointment_strong_params
    params.require(:appointment).permit(:user_id, :pet_id, :date_time)
    end
    
end 
