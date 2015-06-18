class BooksController < ApplicationController


  def index
  end

  def show
    # @book = Book.where(id: params[:id]).first

    @book = Book.where(id: params[:id]).first

    @cart_action = @book.cart_action current_user.try :id

    @author = @book.authors

    @category = @book.categories

    respond_to do |format|
      format.html {render 'show'}
      format.json{ render :json => @book.to_json, status: :ok }
    end
  end

  def shop

  end
end
