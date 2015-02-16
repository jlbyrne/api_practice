class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :color, :string, :null => false
  	add_column :users, :number, :integer, :null => false
  end
end
