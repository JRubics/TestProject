class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name,         :null => false
      t.string :last_name,    :null => false
      t.string :text,         :null => false
      t.timestamps
    end
  end
end
