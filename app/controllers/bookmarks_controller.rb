class BookmarksController < ApplicationController
  before_action :find_list, only: [ :new, :create ]
 

  def new
    @bookmark = Bookmark.new
    authorize @bookmark
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    authorize @bookmark
    if @bookmark.save!
      redirect_to @list
    else 
      render "new"
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.delete
    redirect_to @bookmark.list
    authorize @bookmark
  end

  private
  
  def find_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
