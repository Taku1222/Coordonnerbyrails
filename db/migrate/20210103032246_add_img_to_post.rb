class AddImgToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :img, :string
  end
end
