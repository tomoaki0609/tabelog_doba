class ProductsController < ApplicationController

  # before_action :authenticate_user!, except: :index

  def index
    @nickname = current_user.nickname
  end

end
