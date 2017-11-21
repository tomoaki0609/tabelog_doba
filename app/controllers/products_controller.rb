class ProductsController < ApplicationController

  before_action :move_to_index, except: :index
  before_action :authenticate_user!, except: :index

  def index
    @products = Product.order('id DESC').limit(7)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render :index, notice: "店情報を登録しました"
    else
      flash.now[:alert] = "店情報を登録してください"
      render :new
    end
  end

  def destroy
    product = Product.find(params[:id])
    if product.destroy
      redirect_to user_path
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    if product.update(product_params)
      redirect_to action: :index, notice: "店舗情報を編集しました"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:shop_name, :ruby, :phone_number, :address1, :address2, :address3, :image_url, :genre, :image_url, :detail, :catchphrase, :image1, :image2, :image3).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
