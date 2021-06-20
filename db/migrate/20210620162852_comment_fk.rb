class CommentFk < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :post_id, :integer
    add_foreign_key 'comments', 'users'
    add_foreign_key 'comments', 'posts'
  end
end
