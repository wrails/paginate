class NumbersController < ApplicationController
	def index
		if(params[:numbers_per_page] && params[:page])
	   
	   		@numbers_per_page = [1000, params[:numbers_per_page].to_i].max
	  		@page = helpers.page_limit(@numbers_per_page, params[:page].to_i)

	 		@numbers = helpers.create_array(@numbers_per_page, @page)
	 		@last_page = helpers.last_page(@numbers_per_page)
		else
	 		@numbers = helpers.create_array(1000, 1)
		end
	 end
end