class AddAttachmentAttachmentToResources < ActiveRecord::Migration
  def self.up
    change_table :resources do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :resources, :attachment
  end
end
