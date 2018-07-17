class ApproveComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :is_approved,          :string
  end
end
