module NumbersHelper

	def page_limit (numbers_per_page, page)
		[page, (1000000/ numbers_per_page).ceil].min
	end

	def create_array (numbers_per_page, page)
		num_start = (page-1) * numbers_per_page + 1
		numbers = *(num_start .. [1000000, num_start + numbers_per_page - 1].min)
		numbers.map{|x| [x, x.humanize]}
	end

	def last_page (numbers_per_page)
	    (1000000 / numbers_per_page).ceil
	end

end
