class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @products = @user.products
    @reviews = @user.reviews
  end
end
