
Restaurant.create!([
  {
    name: "gallitos",
    address: "moi avenue"
  },
  {
    name: "inti",
    address: "inti"
  },
  {
    name: "kfc",
    address: "banda street"
  }
])


Pizza.create!([
  {
    name: "Cheese",
    ingredients: "cheese"
  },
  {
    name: "Pepperoni",
    ingredients: "whatever"
  },
  {
    name: "code",
    ingredients: "code"
  }

])

Restaurant.all.each do |restaurant|
  rand(1..5).times do
    # get a random pizza
    pizza = Pizza.find(Pizza.pluck(:id).sample)

    RestaurantPizza.create!(restaurant_id: restaurant.id, pizza_id: pizza.id, price: rand(5..25))
  end
end

