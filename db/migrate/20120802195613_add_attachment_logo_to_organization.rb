class AddAttachmentLogoToOrganization < ActiveRecord::Migration
  def self.up
    add_column :organizations, :logo_file_name, :string
    add_column :organizations, :logo_content_type, :string
    add_column :organizations, :logo_file_size, :integer
    add_column :organizations, :logo_updated_at, :datetime
<<<<<<< HEAD
    change_table :organizations do |t|
      t.has_attached_file :logo
    end
=======

>>>>>>> f7264d1270e8b4328c8bcb134846595a3973d6e3
  end

  def self.down
    remove_column :organizations, :logo_file_name
    remove_column :organizations, :logo_content_type
    remove_column :organizations, :logo_file_size
    remove_column :organizations, :logo_updated_at
<<<<<<< HEAD
    drop_attached_file :organizations, :logo
    end
=======
>>>>>>> f7264d1270e8b4328c8bcb134846595a3973d6e3
  end
end
