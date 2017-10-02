# rails g migration CreateJoinTableUserProduct user product
# table_name: :basket -----added manualy
class CreateJoinTableUserProduct < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :products, table_name: :basket do |t|
      t.index [:user_id, :product_id]
      t.index [:product_id, :user_id]
    end
  end
end
