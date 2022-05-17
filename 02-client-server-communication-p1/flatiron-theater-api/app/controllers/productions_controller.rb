class ProductionsController < ApplicationController

    # "/productions"
    def index 
        render json: Production.all
    end 

    # "/productions/:id"
    def show
        # byebug

        production = Production.find(params[:id])
        render json: production, include: :production_roles
    end

    # "/productions"
    # GROUP ACTIVITY #1
    def create
        # byebug
        
        # Add Code to Check Whether Processable Entity
        production = Production.create!(production_params)
        
        render json: production, status: :created

        # If Yes, Return New Production in JSON Format With Status of Created

        # If No, Return Errors With Status of Unprocessable Entity
    end

    private

    # GROUP ACTIVITY #1
    def production_params
        # Add Strong Params for Each New Production
        params.permit(:title, :genre, :description, :budget, :image, :director, :ongoing)
    end
end
