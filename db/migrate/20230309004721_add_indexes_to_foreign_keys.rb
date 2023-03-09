class AddIndexesToForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_index :comments, :user_id unless index_exists?(:comments, :user_id)
    add_index :comments, :post_id unless index_exists?(:comments, :post_id)
    add_index :likes, :user_id unless index_exists?(:likes, :user_id)
    add_index :likes, :post_id unless index_exists?(:likes, :post_id)
    add_index :posts, :user_id unless index_exists?(:posts, :user_id)
  end
end
