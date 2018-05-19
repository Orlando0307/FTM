class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name],email: params[:user][:email],birthday: params[:user][:birthday])
    if @user.save
      redirect_to root_path, notice: 'sign in completed'
    else
      flash.now[:alert] = "sign in failed"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :birthday, :password_confirmation)
  end
end
