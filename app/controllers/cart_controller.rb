class CartController < ApplicationController

	before_filter  :authenticate_user!, :except => [:add_to_cart, :view_order]

  def addadd_to_cart
  	line_item = LineItem.new
  	line_iten.painting_id = params[:painting_id]
  	line_item.save

  	line_item.line_item_total = line_item.painting.price
  	line_item.save

  	redirect_to root_path
  end

  def view_order
  	@line_items = LineItem.all
  end

  def checkout
  	@line_items = LineItem.all
  	@order = Order.new
  	@order.user_id = current_user.id

  	sum = 0

  	@line_items.each do |line_item|
  		sum += line_item.line_item_total
  	end

  	@order.subtotal = sum
  	@order sales_tax = sum * 0.07
  	@order.grand_total = sum + @order.sales_tax
  	@order.save

  	LineItem.destroy_all
  end
end
