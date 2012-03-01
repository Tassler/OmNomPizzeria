class PizzaToppingJoinTable < ActiveRecord::Migration
  def up
    create_table :pizzas_toppings, :id => false do |t|
      t.integer :pizza_id
      t.integer :topping_id
    end
  end

  def down
    drop_table :pizzas_toppings
  end
end
