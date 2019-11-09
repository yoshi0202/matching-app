class UserController < ApplicationController
	def create
		if User.create!(
			"name" => params[:user][:name],
			"email" => params[:user][:email],
			"password" => params[:user][:password],
		)
		render :json => {'result' => 'OK'}
		else 
      render status: 500, :json => {'result' => 'NG'}
		end
	end
	def login
		user = User.find_by!(email: params[:user][:email])
		if user.authenticate(params[:user][:password])
      render :json => {'result' => 'OK'}
    else
      render status: 500, :json => {'result' => 'NG'}
    end
	end
end
