class AddToUser < ActiveRecord::Migration
  def up
  	add_column :users, :user_type, :string
  end

  def down
  	remove_column :users, :user_type
  end
end
