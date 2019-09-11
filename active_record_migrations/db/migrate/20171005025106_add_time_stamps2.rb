class AddTimeStamps2 < ActiveRecord::Migration[5.1]
  def change
    add_timestamps :products, null: true
  end
end
