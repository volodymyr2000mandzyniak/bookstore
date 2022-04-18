class BooksController < ApplicationController
	before_action :set_book, only: :show

  def index
	@books = Book.paginate(page: params[:page], per_page:4 )
  end

  def show
  end
	
	private
		
  def set_book
	@book = Book.find(params[:id]) 
  end
end



