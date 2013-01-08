class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :resource_title
      t.string :resource_url
      t.string :resource_file
      t.integer :resource_count

      t.timestamps
    end
  end
end
