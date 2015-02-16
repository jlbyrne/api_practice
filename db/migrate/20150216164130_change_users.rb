class ChangeUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :phone
  	remove_column :users, :email
  end

  def down
  	add_column :users, :email, :null => false
  	add_column :users, :phone, :null => false, :limit => 10
  end
end
