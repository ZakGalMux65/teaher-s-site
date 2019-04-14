class BooksController < ApplicationController
  def index
    @books = Book.all.order(updated_at: :desc)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new; end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render action: 'new'
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :image)
  end
end
