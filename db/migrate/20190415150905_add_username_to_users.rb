class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change #anything inside of this method, is translated to SQL code and modified the database
    add_column :users, :username, :string #add column to "users" table, called "username" and of type "string"
    add_index :users, :username, unique: true #first, index usernames for quick lookup. Second, ensure usernames are unique.
  end
end