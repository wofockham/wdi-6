class AddNameToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :name, :string
  end
end
