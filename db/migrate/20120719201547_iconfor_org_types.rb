class IconforOrgTypes < ActiveRecord::Migration
  def change
    add_column :org_types, :icon, :string
  end

end
