class AddOrgTypeToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :org_type_id, :integer
  end
end
