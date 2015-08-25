class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :description
      t.integer :amount
      t.float :row_price

      t.timestamps null: false
    end
  end
end
