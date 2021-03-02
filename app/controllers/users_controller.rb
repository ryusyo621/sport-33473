class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :last_name, :first_name, :kana_last_name, :kana_first_name,:phone_number, :main_sport, :birthday)
  end
end
