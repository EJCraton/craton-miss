class AddAttachmentAvatarToArchives < ActiveRecord::Migration
  def self.up
    change_table :archives do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :archives, :avatar
  end
end
