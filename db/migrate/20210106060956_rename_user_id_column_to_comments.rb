class RenameUserIdColumnToComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :user_id, :post_id
  end
end
