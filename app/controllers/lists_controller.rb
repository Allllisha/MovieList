class ListsController < ApplicationController
  skip_after_action :verify_authorized, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[show]


  def index 
    @lists = policy_scope(List).where(user: current_user)
  end

  def show
    @list = List.find(params[:id])
    @movies = Movie.all
    @bookmark = Bookmark.new
    @review = Review.new
    @reviews = @list.reviews
    authorize @list
  end

  def new
    @list = List.new
    @list.user = current_user
    authorize @list
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    authorize @list
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    redirect_to list_path
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path(@lists)
  end



  private

  # def find_restaurants
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
