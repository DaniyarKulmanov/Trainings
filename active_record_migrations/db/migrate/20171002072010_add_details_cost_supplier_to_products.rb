# rails g migration AddDetailsCostSupplierToProducts 'cost:decimal{5,2}' supplier:references{polymorphic}
class AddDetailsCostSupplierToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :cost, :decimal, precision: 5, scale: 2
    add_reference :products, :supplier, polymorphic: true
  end
end
