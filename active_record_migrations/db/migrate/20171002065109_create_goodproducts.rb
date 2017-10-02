# rails generate migration AddPartNumberToGoodproducts name:string:index part_number:integer:index
class CreateGoodproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :goodproducts do |t|
      t.string :name
      t.integer :part_number
    end
    add_index :goodproducts, :name
    add_index :goodproducts, :part_number
  end
end
