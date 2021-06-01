class RunsController < ApplicationController

    before_action :find_run, only: [:show, :update, :destroy]

    def index
        @runs = Run.all
        render json: @runs
    end
    
    def show
        render json: @run
    end
    
    def create
        @run = Run.create!(runs_params)
        render json: @run
    end
    
    def update
        @run.update(runs_params)
        render json: @run
    end
    
    def destroy
        @run.destroy
    end

    private
    
    def find_run
        @run = Run.find params[:id]
    end

    def runs_params
        params.require(:run).permit(:name, :age, :date, :location, :time)
    end 

end
