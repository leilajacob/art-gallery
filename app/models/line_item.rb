class LineItem < ActiveRecord::Base
	belongs_to :painting
	belongs_to :order
end
