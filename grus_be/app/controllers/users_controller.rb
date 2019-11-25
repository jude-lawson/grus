class UsersController < ApplicationController
  def show
    render json: User.profile(params[:username])
  end
end
