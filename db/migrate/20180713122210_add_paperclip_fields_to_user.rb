class AddPaperclipFieldsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :biography,          :text
    add_column :users, :image_file_name,    :string
    add_column :users, :image_content_type, :string
    add_column :users, :image_file_size,    :integer
    add_column :users, :image_updated_at,   :datetime
  end
end
