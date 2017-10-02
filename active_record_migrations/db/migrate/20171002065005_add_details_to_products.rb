# rails generate migration AddDetailsToProducts price:decimal
class AddDetailsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :price, :decimal
  end
end
