# rails generate migration AddUserRefToProducts user:references
class AddUserRefToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :user, foreign_key: true
  end
end
