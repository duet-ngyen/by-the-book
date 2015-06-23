class CategoriesController < ApplicationController
  def show_category
    @category = Category.find(params[:id])
  end
end
