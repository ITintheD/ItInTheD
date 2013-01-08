class AddPhoneToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :org_phone, :string
  end
end
