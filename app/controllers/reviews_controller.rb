class ReviewsController < ApplicationController
  before_action :find_list, except: [:destroy]
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @list = List.find(params[:list_id])
    @review.list = @list
    authorize @review

    if @review.save
       redirect_to list_path(@list)
    else 
      render "list/show"
    end
  end
    

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to list_path(@review.list)
    authorize @review
  end

  private

  def find_list
  @list = List.find(params[:list_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
