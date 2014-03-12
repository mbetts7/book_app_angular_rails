class BooksController < ApplicationController
  def index
   # Add some fake Books
    fake_books = [{title: "blah"},{title: "pretty blah"}]

    # respond to the type of request
    respond_to do |f|
        f.html  {render :layout => false }
        f.json  {render :json => fake_books}
    end
  end

  def show
    render layout: false
  end

  def create
    new_book = params.require(:book).permit(:title, :description)
    book = Book.create(new_book)

    respond_to do |f|
        f.html {redirect_to books_path}
        f.json {render json: book }
    end
  end


end
