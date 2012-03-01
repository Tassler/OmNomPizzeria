class AddOrderIdToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :order_id, :integer

  end
end
