class AddBrandToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :brand, :text
  end
end
