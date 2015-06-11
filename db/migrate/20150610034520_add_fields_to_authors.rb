class AddFieldsToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :name, :string
    add_column :authors, :email, :string
    add_column :authors, :avatar, :string
    add_column :authors, :country, :string
    add_column :authors, :birth, :integer
    add_column :authors, :about, :string
  end
end
