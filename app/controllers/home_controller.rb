class HomeController < ApplicationController
	def index
		render json: { status: 'SUCCESS', message: 'Index', data: 'aiueo' }
	end
end
