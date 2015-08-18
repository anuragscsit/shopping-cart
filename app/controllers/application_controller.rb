class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  	def load_categories
  		@categories = Category.all
  	end
  
	  def set_category(category_id)
	    @category = Category.find category_id
	  end

	  def set_sub_category(sub_category_id)
	    @sub_category = @category.sub_categories.find sub_category_id
	  end

	  def set_item(item_id)
	  	@item = @sub_category.items.find item_id
	  end
  
end
