class AddColorAndNumberToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :color, :null => false
  	add_column :users, :number, :null => false, :limit => 2
  end
end
