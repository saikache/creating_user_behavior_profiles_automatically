class CreateUserCommands < ActiveRecord::Migration
  def change
    create_table :user_commands do |t|
      t.string :uniq_command
      t.integer :frequency
      t.integer :history_id

      t.timestamps
    end
  end
end
