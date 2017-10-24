class ProductsController < ApplicationController

  before_action :move_to_index, except: :index
  # before_action :authenticate_user!, except: :index

  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(shop_name: product_params[:shop_name], ruby: product_params[:ruby], phone_number: product_params[:phone_number], address1: product_params[:address1], address2: product_params[:address2], address3: product_params[:address3], genre: product_params[:genre], image_url: product_params[:image_url], detail: product_params[:detail], user_id: current_user.id)
    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def product_params
    params.require(:product).permit(:shop_name, :ruby, :phone_number, :address1, :address2, :address3, :genre, :image_url, :detail)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
