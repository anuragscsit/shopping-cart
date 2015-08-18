class ItemsController < ApplicationController
	before_action :initialize_category
  before_action :initialize_sub_category
  before_action :initialize_item
	
	def show
	end

	private

		def initialize_category
			set_category(params[:category_id])
		end

		def initialize_sub_category
			set_sub_category(params[:sub_category_id])
		end

		def initialize_item
			set_item(params[:id])
		end

end
