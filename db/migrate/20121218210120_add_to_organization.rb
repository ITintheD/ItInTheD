class AddToOrganization < ActiveRecord::Migration
  def up
  	add_column :organizations, :description, :text
  	add_column :organizations, :org_type, :string
  end

  def down
  	remove_column :organizations, :description
  	remove_column :organizations, :org_type
  end
end
