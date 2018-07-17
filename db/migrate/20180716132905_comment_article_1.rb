class CommentArticle1 < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :name
    remove_column :comments, :last_name
  end
end
