class GenresController < ApplicationController
  before_action :find_genre, only: [:show, :edit, :update]
  
  
  def index 
    @genre = Genre.all
  end
  
  def new 
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genre_params)
    redirect_to genre
  end

  def update
    @genre.update(genre_params)
    redirect_to @genre
  end
  
  
  
  
  
  
  
  
  private
  
  def find_genre
    @genre = Genre.find(params[:id])
  end
  
  def genre_params
    params.require(:genre).permit!
  end

end
