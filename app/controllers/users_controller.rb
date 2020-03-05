class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def show
        @user = User.find(session[:user_id])
        #to block other users to acces other user's showpage
    end

    def new
        @user = User.new
    end

    def create

        @user = User.create(user_params)
        session[:user_id] = @user.id

        redirect_to shelters_path
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to shelter_path
    end


    private

    def user_params
     params.require(:user).permit(:name, :password)
    end

end







