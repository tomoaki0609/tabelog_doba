class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
  end
end
