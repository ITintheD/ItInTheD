class AddDetailsToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :logo, :string
  end
end
