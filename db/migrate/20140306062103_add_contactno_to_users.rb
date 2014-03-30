class AddContactnoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :contactno, :string
    add_column :users, :username, :string
    add_column :users, :city, :string
  end
end
