class UsersController < ApplicationController

    skip_before_action :authorized, only: [:create, :login]
    
    def profile
        render json: @user 
    end 

    def index
        @users = User.all 

        render json: @users 
    end 
        
        
    def create
        @user = User.create(
            username: params[:username],
            password: params[:password]
        )

        render json: @user, status: :created 
    end 

    def login
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            payload = {user_id: @user.id}
            @token = JWT.encode(payload, Rails.application.secrets.secret_key_base[0])
            # master key in config (it is git ignored) - once deployed, need something else
            #usually give an expiration on jwts

            render json: {user: @user, token: @token}
        else 
            render json: "Invalid credentials"
        end 

    end 
    
end
