class WelcomeController < ApplicationController


	def index
		@paintings = Painting.order(created_at: :desc)
	end

	def for_sale
		@paintings = Painting.where(category: params[:cat_id]).order(created_at: :desc)
		@category = Category.find(params[:cat_id])
	end

end