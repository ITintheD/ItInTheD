class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zip
      t.float :lat
      t.float :long
      t.string :org_url
      t.string :web_link

      t.timestamps
    end
  end
end
