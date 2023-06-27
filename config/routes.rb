Rails.application.routes.draw do
  resources :movies, only: [:index, :create]
end
Then, add a controller method:

class MoviesController < ApplicationController

  def create
    byebug
    
  end

  def index
    movies = Movie.all
    render json: movies
  end

end