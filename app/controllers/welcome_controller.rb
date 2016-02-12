class WelcomeController < ApplicationController

	def index
		@paintings = Painting.all
	end

end