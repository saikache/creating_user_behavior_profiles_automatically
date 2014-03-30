class AddAttachmentHistoryfileToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :historyfile
    end
  end

  def self.down
    drop_attached_file :users, :historyfile
  end
end
