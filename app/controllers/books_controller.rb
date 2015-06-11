class BooksController < ApplicationController


  def index
  end

  def show
    @book = Book.where(id: params[:id]).first

    @author = @book.authors

    @category = @book.categories

    respond_to do |format|
      format.html {render 'show'}
    end
  end

  def shop

  end
end
