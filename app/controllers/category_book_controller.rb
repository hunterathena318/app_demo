class CategoryBookController < ApplicationController
	def index
		@categories = Category.all
   
      book = Book.filter_by_category params[:cat_id]
      @category = Category.find_by id: params[:cat_id]
    	

    @books = book.page(params[:page]).per Settings.paginate_page_book_cat
  end
		
	
	
end
