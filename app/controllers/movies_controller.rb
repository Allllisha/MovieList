class MoviesController < ApplicationController

  def index
    if params[:query].present?
      @movies = Movie.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @movies = policy_scope(Movie).order(rating: :desc).limit(3)
    end
    @allmovies = policy_scope(Movie).all.paginate(page: params[:page], per_page: 8)
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie
  end
end
