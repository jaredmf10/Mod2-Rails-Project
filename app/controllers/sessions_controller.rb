class SessionsController < ApplicationController

    skip_before_action :authorized, only: [:new, :create]
    
    def new  
        #rails magic
    end

    def create
        
        @user = User.find_by(name: params[:name])
      
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
    
            redirect_to shelters_path
        else
           flash[:notice] = "No account found"
            redirect_to login_path
        end
    end

    def destroy
        # User.find(session[:user_id]).destroy 
        session[:user_id] = nil
        redirect_to login_path
    end
end
