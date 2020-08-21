class HomeController < ApplicationController
	def top
	end
	def mypage
		@customer = current_customer
	end
end
