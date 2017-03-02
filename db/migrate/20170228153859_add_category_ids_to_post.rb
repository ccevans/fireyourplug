class AddCategoryIdsToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :category_ids, :text, array: true, default: []
  end
end
