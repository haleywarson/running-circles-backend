class ApplicationController < ActionController::API

    before_action :authorized 

    def authorized
        render json: {error: "Please log in"} unless logged_in
    end 

    def logged_in
        !!current_user
        # extra bang so that the return value will be true/false
        # i.e. not nil or truthy
    end 

    def current_user 
        auth_header = request.headers["Authorization"] 
        if auth_header
            token = auth_header.split(" ")[1]
            begin
                @user_id = JWT.decode(token, Rails.application.secrets.secret_key_base[0])[0]["user_id"]
                # if decode shows token is bad, then whole server
                # shuts down, so we do this rescue instead
                @user = User.find(@user_id)
            rescue JWT::DecodeError
                nil
            end 
        end 
        if(@user_id)
            @user=User.find(@user_id)
        else
            nil 
        end 
    end 

end
