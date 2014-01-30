class CreateCrustTypes < ActiveRecord::Migration
  def change
    create_table :crust_types do |t|
      t.string :name
      t.float :price_modifier

      t.timestamps
    end
  end
end
