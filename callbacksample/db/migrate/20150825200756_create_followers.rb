class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.string :user
      t.string :email

      t.timestamps null: false
    end
  end
end
