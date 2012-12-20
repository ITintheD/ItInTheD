class OrganizationNewAttributes < ActiveRecord::Migration
  def change
    add_column :organizations, :org_logo,                :string
    add_column :organizations, :org_num_students_employ, :integer
    add_column :organizations, :org_start_year,          :string
    add_column :organizations, :org_annual_sales,        :integer
    add_column :organizations, :org_optional_stat_a,     :string
    add_column :organizations, :org_optional_stat_b,     :string
    add_column :organizations, :org_optional_stat_c,     :string
  end

end
