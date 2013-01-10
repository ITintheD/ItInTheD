class AddToResources < ActiveRecord::Migration
  def up
  	add_column :resources, :resource_type, :string
  end

  def down
  	remove_column :resources, :resource_type
  end
end
