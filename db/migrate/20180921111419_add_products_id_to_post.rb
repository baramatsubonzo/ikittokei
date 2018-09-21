class AddProductsIdToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :product_id, :integer
    add_index :posts, :product_id
  end
end
