class BooksController < ApplicationController


  def index
  end

  def show
    # @book = Book.where(id: params[:id]).first

    @book = Book.find(params[:id])

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

  def search
    @book = Book.search(params[:search])
  end

  # def create
  #   @test = Book.create(book_params)
  # end
  #
  # def book_params
  #   params.require(:book).permit(:title,:imgbook)
  # end

end
