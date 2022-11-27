class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurant, through: :restaurant_pizzas
end
