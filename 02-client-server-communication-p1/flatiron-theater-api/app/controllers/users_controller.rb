class UsersController < ApplicationController
    
    # "/users"
    def index 
        render json: User.all
    end 

    # "/users/:id"
    def show
        user = User.find(params[:id])
        render json: user, include: :tickets
    end
    
    # GROUP ACTIVITY #1
    def create

        # Add Code to Check Whether Processable Entity
        user = User.create!(user_params)

        # If Yes, Return New User in JSON Format With Status of Created
        render json: user, status: :created

        # If No, Return Errors With Status of Unprocessable Entity
    end

    private

    # GROUP ACTIVITY #1
    def user_params
        # Add Strong Params for Each New User
        params.permit(:name, :admin)
    end
end