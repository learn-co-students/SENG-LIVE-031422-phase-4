class ProductionRolesController < ApplicationController

    # "/production_roles"
    def index 
        render json: ProductionRole.all
    end 

    # "/production_roles/:id"
    def show
        production_role = ProductionRole.find(params[:id])
        render json: production_role, include: :production
    end

    # GROUP ACTIVITY #1
    def create
        # Add Code to Check Whether Processable Entity
        production_role = ProductionRole.create!(production_role_params)
        
        # If Yes, Return New Production Role in JSON Format With Status of Created
        render json: production_role, status: :created

        # If No, Return Errors With Status of Unprocessable Entity
    end

    private

    # GROUP ACTIVITY #1
    def production_role_params
        # Add Strong Params for Each New Production Role
        params.permit(:role, :understudy, :production_id)
    end
end
