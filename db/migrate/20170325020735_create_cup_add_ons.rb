class CreateCupAddOns < ActiveRecord::Migration[5.0]
  def change
    create_table :cup_add_ons do |t|
      t.string :name
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end
