class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: { errors: { message: "This user failed to save."}}
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
