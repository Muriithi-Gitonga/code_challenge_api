class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        restaurant = Restaurant.all
        render json: restaurant
    end

    def show
        restaurant = find_restaurant
        render json: restaurant
    end

    private

    def find_restaurant
        Restaurant.find(params[:id])
    end

    def render_not_found_response
      render json: { error: "Restaurant not found" }, status: :not_found
    end
end
