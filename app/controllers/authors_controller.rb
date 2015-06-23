class AuthorsController < ApplicationController
  def show_author
    @author = Author.find(params[:id])
  end
end
