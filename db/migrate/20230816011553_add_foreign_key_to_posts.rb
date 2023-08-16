class AddForeignKeyToPosts < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :posts, :likes, column: :likes_counter, primary_key: "id" 
    add_foreign_key :posts, :users, column: :author_id, primary_key: "id"
  end
end
