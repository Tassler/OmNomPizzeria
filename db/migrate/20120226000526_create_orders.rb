class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :opened_at
      t.datetime :closed_at

      t.timestamps
    end
  end
end
