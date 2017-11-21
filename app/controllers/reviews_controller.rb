class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to "/products/#{params[:product_id]}", notice: "口コミを作成しました"
    else
      flash.now[:alert] = "口コミを入力してください"
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:nickname, :rate, :comment, :title).merge(product_id: params[:product_id], user_id: current_user.id)
  end
end
