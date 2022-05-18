class ProductionRolesController < ApplicationController
    
    # GET "/production_roles"
    def index 
        render json: ProductionRole.all
    end 

    # GET "/production_roles/:id"
    def show
        production_role = ProductionRole.find(params[:id])
        render json: production_role, include: :production
    end

    # POST "/production_roles"
    def create
        production_role = ProductionRole.create!(production_role_params)
        render json: production_role, status: :created
    end

    # GROUP ACTIVITY => Add Update / Destroy Actions

    # PUT "/production_roles/:id"
    def update
        # byebug
        
        # Find Production Role via Params (id)
        production_role = ProductionRole.find(params[:id])
        
        # Update Production Role with production_role_params
        production_role.update!(production_role_params)

        render json: production_role, status: :created
    end

    # DELETE "/production_roles/:id"
    def destroy
        # Find Production Role via Params (id)
        production_role = ProductionRole.find(params[:id])

        # If Found, Destroy Production Role
        production_role.destroy

        # render json: production_role
        head :no_content
    end

    private

    def production_role_params
        params.permit(:role, :understudy, :production_id)
    end
end
