class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.string :menu_item_name
      t.bigint :order_id
      t.bigint :menu_item_id
      t.integer :menu_item_price
      t.integer :menu_item_quantity
      t.timestamps
    end
  end
end
