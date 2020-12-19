class BooksController < ApplicationController

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def index
  	@books = Book.all
  	@book = Book.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def book_params
  params.require(:book).permit(:title, :body)
  end


end
