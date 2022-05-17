class TicketsController < ApplicationController
    
    # "/tickets"
    def index 
        render json: Ticket.all
    end 

    # "/tickets/:id"
    def show
        ticket = Ticket.find(params[:id])
        render json: ticket, include: [:production, :user]
    end 

    # GROUP ACTIVITY #1
    def create
        # Add Code to Check Whether Processable Entity
        ticket = Ticket.create!(ticket_params)

        # If Yes, Return New Ticket in JSON Format With Status of Created
        render json: ticket, status: :created

        # If No, Return Errors With Status of Unprocessable Entity
    end

    private

    # GROUP ACTIVITY #1
    def ticket_params
        # Add Strong Params for Each New Ticket
        params.permit(:price, :user_id, :production_id)
    end
end