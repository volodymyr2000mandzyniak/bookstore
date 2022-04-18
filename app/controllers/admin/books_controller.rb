class Admin::BooksController < Admin::AdminController
	before_action :set_book, only: [:edit, :update, :destroy]

  def new
		@book = Book.new
  end

  def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to @book, success: 'Успішно добавлено'
		else
			render :new, success: 'Книгу не створино'
		end
  end

  def edit
  end

  def update
		if @book.update(book_params)
			redirect_to @book, info: 'Оновленно!'
		else
			render :edit, danger: 'Оновлення не вдалось!'
    end
	end

	def destroy
		@book.destroy
		redirect_to books_path, success: 'Книгу успішно видалено'			
	end
	
	private
		
	def set_book
		@book = Book.find(params[:id]) 
	end

	def book_params
		params.require(:book).permit(:title, :summary, :body, :image, :all_tags, :category_id )			
	end
end



