class UsersController < ApplicationController
  def show
    user = User.profile(params[:username])
    return render json: user if user
    return render json: {}, status: 404
  end

end
