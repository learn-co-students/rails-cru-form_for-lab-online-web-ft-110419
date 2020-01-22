class ArtistsController < ApplicationController
 before_action :find_artist, only: [:show, :edit, :update]
 before_action :new_artist, only: [:new]
 before_action :all_artist, only: [:index]
  

  def create
    artist = Artist.create(artist_params)
    redirect_to artist
  end

  def update
    @artist.update(artist_params)
    redirect_to @artist
  end
  
  
  
  
  
  
  
  
  private
  
  def find_artist 
    @artist = Artist.find(params[:id])
  end
  
  def artist_params
    params.require(:artist).permit!
  end
  
  def new_artist
    @artist = Artist.new
  end
  
  def all_artist
    @artists = Artist.all
  end
  
  
  
  
  
end
