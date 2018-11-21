class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :price
      t.references :orders

      t.timestamps
    end
  end
end
