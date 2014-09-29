class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.boolean :obtained
      t.date :released
      t.string :rating
      t.text :description

      t.timestamps
    end
  end
end
