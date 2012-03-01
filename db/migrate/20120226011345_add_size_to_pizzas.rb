class AddSizeToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :size, :string

  end
end
