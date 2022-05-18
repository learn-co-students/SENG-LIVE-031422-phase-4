class UsersController < ApplicationController

    # GET "/users"
    def index 
        render json: User.all
    end 

    # GET "/users/:id"
    def show
        user = User.find(params[:id])
        render json: user, include: :tickets
    end
    
    # POST "/users"
    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    # GROUP ACTIVITY => Add Update / Destroy Actions

    # PUT "/users/:id"
    def update
        # Find User via Params (id)
        user = User.find(params[:id])

        user.update!(user_params)

        render json: user, status: :created
    end

    # DELETE "/users/:id"
    def destroy
        # Find User via Params (id)
        user = User.find(params[:id])

        user.destroy

        head :no_content
    end

    private

    def user_params
        params.permit(:name, :admin)
    end
end