class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.string :soc_url
      t.string :soc_type
      t.references :organization

      t.timestamps
    end
    add_index :socials, :organization_id
  end
end
