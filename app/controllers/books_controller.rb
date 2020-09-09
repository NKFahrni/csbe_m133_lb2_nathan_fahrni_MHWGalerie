class BooksController < ApplicationController
  def index
    @books = Book1.all
  end

  def show
    @book = Book1.find(params[:id])
  end

  def new
    @book = Book1.new
    @subjects = Subject1.all
  end

  def create
    @book = Book1.new(book1_params)

    if @book.save
      redirect_to action: 'index'
    else
      @subjects = Subject2.all
      render action: 'new'
    end
  end

  def book1_params
    params.require(:book1).permit(:title, :price, :subject1_id, :description)
  end

  def edit
    @book = Book1.find(params[:id])
    @subjects = Subject2.all
  end

  def update
    @book = Book1.find(params[:id])

    if @book.update_attrinutes(book1_params)
      redirect_to action: 'index'
    else
      @subjects = Subject2.all
      render action: 'edit'
    end
  end

  def destroy
    Book1.find(params[:id]).destroy
    redirect_to action: "index"
  end
end