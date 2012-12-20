class AddStateToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :org_state, :string
  end
end
