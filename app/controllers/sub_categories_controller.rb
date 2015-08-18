class SubCategoriesController < ApplicationController
	before_action :initialize_category
  before_action :initialize_sub_category
	
	def show
		@items = @sub_category.items
	end

	private 

		def initialize_category
			set_category(params[:category_id])
		end

		def initialize_sub_category
			set_sub_category(params[:id])
		end

end
