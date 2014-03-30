class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :user_name
      t.string :email
      t.integer :employeeid

      t.timestamps
    end
  end
end
