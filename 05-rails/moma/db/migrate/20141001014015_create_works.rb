class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :year
      t.string :medium
      t.string :style
      t.text :image
      t.timestamps
    end
  end
end
