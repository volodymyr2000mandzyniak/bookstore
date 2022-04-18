class AddCategoryIdToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :category_id, :integer
    add_index :books, :category_id
  end
end
