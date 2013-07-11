class MoviesController < ApplicationController

  def index
    @movies = params[:search]
      @results = Imdb::Search.new(params[:search].to_s).movies[0..9]
      @search = params[:search]
  end

#showing movie by unique id
  def show
    @movie = Movie.find(params[:id])
  end

#params for adding new movie
  def create
    new_movie = Movie.new

    new_movie.title = params[:title]
    new_movie.year = params[:year]
    new_movie.director = params[:director]
    new_movie.plot = params[:plot]
    new_movie.mpaa_rating = params[:mpaa_rating]
    new_movie.favorite = params[:favorite]
    new_movie.save

    redirect_to new_movie
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to('/movies')
  end

end
