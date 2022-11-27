class PizzasController < ApplicationController
    
    def index
        render json: Pizza.all
    end
end
