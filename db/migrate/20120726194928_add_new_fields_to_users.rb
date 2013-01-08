class AddNewFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :header, :string
    add_column :users, :location, :string
    add_column :users, :summary, :text  
    add_column :users, :image, :string
  
  end
end
