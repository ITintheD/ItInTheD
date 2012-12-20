class AddAttachmentResumeToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.has_attached_file :resume
    end
  end

  def self.down
    drop_attached_file :users, :resume
  end
end
