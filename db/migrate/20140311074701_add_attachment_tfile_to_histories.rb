class AddAttachmentTfileToHistories < ActiveRecord::Migration
  def self.up
    change_table :histories do |t|
      t.attachment :tfile
    end
  end

  def self.down
    drop_attached_file :histories, :tfile
  end
end
