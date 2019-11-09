class UserController < ApplicationController
	def create
		User.create!(
			"name" => params[:user][:name],
			"email" => params[:user][:email],
			"password" => params[:user][:password],
		)
    render :json => {'result' => 'OK'}
	end
	def login
		user = User.find_by!(email: params[:user][:email])
		if user.authenticate(params[:user][:password])
      render :json => {'result' => 'OK'}
    else
      render :json => {'result' => 'NG','status'=>500}
    end
	end
end
