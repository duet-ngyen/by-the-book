class AddFieldsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :category_title, :string
  end
end
