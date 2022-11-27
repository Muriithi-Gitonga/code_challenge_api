class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        restaurant = Restaurant.all
        render json: restaurant
    end

    private

    def render_not_found_response
      render json: { error: "Restaurant not found" }, status: :not_found
    end
end
