class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    
    def index
    @users = User.all
    end

    def show
        # @user = User.find(params[:id])
            @user = User.find(session[:user_id])
        #to block other users to access other user's showpage
    end

    def new
      @user = User.new
    end

    def create
        @user = User.create(user_strong_params)
        session[:user_id] = @user.id

        redirect_to @user
    end

    def destroy
     @user = User.find(params[:id])
     @user.destroy

     redirect_to new_user_path
    end

    private

    def user_strong_params
        params.require(:user).permit(:name, :location, :password)
    end

end
