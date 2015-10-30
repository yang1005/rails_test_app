class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price, null: false

      t.timestamps null: false
    end
  end
end
