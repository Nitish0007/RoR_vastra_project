class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :category
      t.string :colour

      t.timestamps
    end
  end
end
