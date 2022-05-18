class ProductionsController < ApplicationController

    # GET "/productions"
    def index 
        render json: Production.all
    end 

    # GET "/productions/:id"
    def show
        production = Production.find(params[:id])
        render json: production, include: :production_roles
    end

    # POST "/productions"
    def create
        production = Production.create!(production_params)
        render json: production, status: :created
    end

    # GROUP ACTIVITY => Add Update / Destroy Actions

    # PUT "/productions/:id"
    def update
        # Find Production via Params (id)
        production = Production.find(params[:id])

        # Update Production with production_params
        production.update!(production_params)

        # Render Production with Created Status
        render json: production, status: :created
    end

    # DELETE "/productions/:id"
    def destroy
        # Find Production via Params (id)
        production = Production.find(params[:id])

        # If Found, Destroy Production
        production.destroy

        # Way of Confirming Deletion
        head :no_content
    end

    private

    def production_params
        params.permit(:title, :genre, :description, :budget, :image, :director, :ongoing)
    end
end
