class AddJobListToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :org_job, :string
  end
end
