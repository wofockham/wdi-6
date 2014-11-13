class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|

      t.timestamps
    end
  end
end
