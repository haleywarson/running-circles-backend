class RunsController < ApplicationController

    before_action :find_run, only: [:show, :update, :destroy]

    def index
        @runs = Run.all
        render json: @runs, include: [:users]
    end
    
    def show
        render json: @run, include: [:users]
    end
    
    def create
        @run = Run.create!(run_params)
        render json: @run, include: [:users]
    end
    
    def update
        @run.update(run_params)
        render json: @run, include: [:users]
    end
    
    def destroy
        @run.destroy
    end

    private
    
    def find_run
        @run = Run.find params[:id]
    end

    def run_params
        params.require(:run).permit(:name, :date, :location, :time)
    end 

end
