class AddSizeToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :size, :text
  end
end
