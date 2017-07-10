class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.product_id = @product.id
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  # def update
  #   @review= Review.find(params[:id])
  #   if @review.update(review_params)
  #     flash[:notice] = "Product has been updated"
  #     redirect_to reviews_path
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    Review.find(params[:id]).destroy
  end

  private

  def review_params
    params.require(:review).permit(:author, :content_body, :rating)
  end
end
