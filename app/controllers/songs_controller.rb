class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update]
  
  
  def index 
    @song = Song.all
  end
  
  def new 
    @song = Song.new
  end

  def create
    song = Song.create(song_params)
    redirect_to song
  end

  def update
    @song.update(song_params)
    redirect_to @song
  end
  
  
  
  
  
  
  
  
  private
  
  def find_song
    @song = Song.find(params[:id])
  end
  
  def song_params
    params.require(:song).permit!
  end

end
