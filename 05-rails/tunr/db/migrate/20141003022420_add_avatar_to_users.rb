class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :text, :default => 'http://derpreview.files.wordpress.com/2012/01/harpo-marx-02.jpg'
  end
end
