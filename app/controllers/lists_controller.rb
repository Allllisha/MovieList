class ListsController < ApplicationController
  def index 
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
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
