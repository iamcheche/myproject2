class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :id
      t.text :quantity  	
      t.text :name
      t.float :price
      t.text :category

      t.timestamps
    end
  end
end
