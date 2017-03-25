class CreateCups < ActiveRecord::Migration[5.0]
  def change
    create_table :cups do |t|
      t.string :name
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end
