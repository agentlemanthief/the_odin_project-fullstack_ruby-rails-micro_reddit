class AddUserId < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :user_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_foreign_key "posts", "users"
  end
end
