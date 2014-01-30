class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.references :order, index: true
      t.integer :quantity
      t.references :size, index: true
      t.references :crust_type, index: true

      t.timestamps
    end
  end
end
