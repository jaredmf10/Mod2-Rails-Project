class AppointmentsController < ApplicationController

    def index
    @appointments = Appointment.all
    end
    
    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
        @pet = Pet.find(params[:pet_id])
        # @user = User.find(params[:user_id])
       
    end

    def create
        @appointment = Appointment.create(appointment_strong_params)
        redirect_to shelters_path
    end

    def edit
        @appointment = Appointment.find(params[:id])

       
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(appointment_strong_params)
        redirect_to profile_path
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
   
        redirect_to shelters_path
    end

private

    def appointment_strong_params
    params.require(:appointment).permit(:user_id, :pet_id, :date_time)
    end
    
end 
