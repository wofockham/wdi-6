class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
     t.string :name
     t.text :image
     t.float :orbit
     t.float :mass
     t.float :diameter
     t.integer :moons

     t.timestamps
    end
  end
end
