class EditComment < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :article_id
    add_column :comments, :post_id,          :string
  end
end
