class ApplicationController < ActionController::API
    # Update, Delete
    
    # '/productions/:id'
    # Update => Record Not Found / Record Invalid

    # '/productions/:id'
    # '/tickets/:id'
    # '/production_roles/:id'
    # Delete => Record Not Found

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    private

    def render_unprocessable_entity_response(invalid)
        # byebug
        
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    def render_not_found_response(not_found)
        render json: { errors: "Couldn't find record with ID of #{not_found.id}" }, status: :not_found
    end
end
