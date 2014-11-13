class AddShelfIdToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :shelf_id, :integer
  end
end
