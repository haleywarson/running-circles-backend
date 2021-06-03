class UsersController < ApplicationController

    skip_before_action :authorized, only: [:create, :login]
    
    def profile
        render json: @user, include: [:runs, :circles]
    end 

    def index
        @users = User.all 

        render json: @users, include: [:runs, :circles]
    end 
        
        
    def create
        @user = User.create(user_params)

        render json: @user, include: [:runs, :circles], status: :created 
    end 

    def login
        @user = User.find_by(username: params[:user][:username])

        if @user && @user.authenticate(params[:user][:password])
            payload = {user_id: @user.id}
            @token = JWT.encode(payload, Rails.application.secrets.secret_key_base[0])

            render json: {user: @user, token: @token}
        else 
            render json: "Invalid credentials"
        end 
    end 

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end 

end
