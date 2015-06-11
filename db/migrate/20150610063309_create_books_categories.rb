class CreateBooksCategories < ActiveRecord::Migration
  def change
    create_table :books_categories do |t|
      t.references :book, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
    end
  end
end
