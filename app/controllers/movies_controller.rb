# app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = "Movie was successfully created."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :blurb, :date_released, :country_of_origin, :showing_start, :showing_end, genre_ids: [])
  end
end