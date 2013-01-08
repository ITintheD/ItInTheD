class RemoveImageFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :image
  end

  def down
    add_column :users, :image, :string
    
  end
end
