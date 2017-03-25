class CreateOrderItemAddOns < ActiveRecord::Migration[5.0]
  def change
    create_table :order_item_add_ons do |t|
      t.references :order_item, foreign_key: true
      t.references :cup_add_on, foreign_key: true

      t.timestamps
    end
  end
end
