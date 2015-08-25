class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :total_price
      t.boolean :discount

      t.timestamps null: false
    end
  end
end
