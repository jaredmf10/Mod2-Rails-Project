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
        @users = User.all
    end

    def create
        @appointment = Appointment.create(appointment_params)
        redirect_to shelters_path
    end

    def edit
        @appointment = Appointment.find(params[:id])
       
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(appointment_params)
        redirect_to shelters_path
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
   
        redirect_to shelters_path
    end

private

def appointment_params
    params.require(:appointment).permit(:pet_id, :user_id, :date_time)
end

end
