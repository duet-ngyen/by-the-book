class AddFieldsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :title, :string
    add_column :books, :publisher, :string
    add_column :books, :year, :integer
    add_column :books, :isbn, :string
    add_column :books, :price, :float
    add_column :books, :imgbook, :string
    add_column :books, :description, :string
  end
end
