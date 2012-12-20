class ChangeImageToAvatar < ActiveRecord::Migration
  def up
    rename_column :users, :image_file_name, :avatar_file_name
    rename_column :users, :image_content_type, :avatar_content_type
    rename_column :users, :image_file_size, :avatar_file_size
    rename_column :users, :image_updated_at, :avatar_updated_at
    
  end

  def down
    rename_column :users, :avatar_file_name, :image_file_name
    rename_column :users, :avatar_content_type, :image_content_type
    rename_column :users, :avatar_file_size, :image_file_size
    rename_column :users, :avatar_updated_at, :image_updated_at
  end
end
