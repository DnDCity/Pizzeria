class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.float :total
      t.string :status

      t.timestamps
    end
  end
end
