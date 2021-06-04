class UserRunsController < ApplicationController

    def index
        @user_runs = UserRun.all 
        render json: @user_runs
    end 
        
    def create
        @user_run = UserRun.create(user_run_params)

        render json: @user_run, status: :created 
    end 

    private

    def user_run_params
        params.require(:user_run).permit(:user_id, :run_id)
    end 

end
