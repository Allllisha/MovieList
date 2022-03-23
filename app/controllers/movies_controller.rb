class MoviesController < ApplicationController
  def index
    if params[:query].present?
      @movies = Movie.search(params[:query])
    else
      @movies = policy_scope(Movie).all.paginate(page: params[:page], per_page: 8)
    end
    @My_movies = policy_scope(Movie).where(user: current_user)
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie
  end
end
