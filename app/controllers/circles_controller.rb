class CirclesController < ApplicationController
    
    before_action :find_circle, only: [:show, :update, :destroy]

    def index
        # get
        @circles = Circle.all
        render json: @circles
    end
    
    def show
        render json: @circle
    end
    
    def create
        @circle = Circle.create name: params[:name]
        render json: @circle
    end
    
    def update
        @circle.update name: params[:name]
        render json: @circle
    end
    
    def destroy
        @circle.destroy
    end
    
    private
    
    def find_circle
        @circle = Circle.find params[:id]
    end

end
