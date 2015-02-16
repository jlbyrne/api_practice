class ChangeNumberColumnForUsers < ActiveRecord::Migration
  def change
  	change_column :users, :number, :string, limit: 2
  end
end
