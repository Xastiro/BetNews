class UsersController < ApplicationController

  def show
  end

  def index
    @users = User.all
    @users = @users.sort_by(&:wallet).reverse!
    @users_numbers = @users.count
    @current_user_index = @users.find_index(current_user)
  end

  def badge
    @user = User.find(params[:id])
    @users = User.all
    @users = @users.sort_by(&:wallet).reverse!
    @current_user_index = @users.find_index(current_user)
  end

  private

end
