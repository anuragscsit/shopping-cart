class CategoriesController < ApplicationController
	before_action :initialize_category

	def show
		@sub_categories = @category.sub_categories
	end

	def index
		load_categories
	end

	private
  
	  def initialize_category 
	    set_category(params[:id])
	  end
  

end
