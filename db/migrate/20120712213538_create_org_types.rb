class CreateOrgTypes < ActiveRecord::Migration
  def change
    create_table :org_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
