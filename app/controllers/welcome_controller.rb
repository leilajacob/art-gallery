class WelcomeController < ApplicationController


	def index
		@paintings = Painting.all
	end

	def for_sale
		@paintings = Painting.where(category: params[:cat_id])
		@category = Category.find(params[:cat_id])
	end

end