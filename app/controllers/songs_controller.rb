class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  # def destroy
  # end

  def show
    @song = Song.find(params[:id])
  end

# <%= (link_to @song.artists.name, artist_path(@song.artists)) if @song.artists %>
# <%= (link_to @song.genres.name, genre_path(@song.genres)) if @song.genres %> -->
# <a href="/artists/<%= @song.artist_id%>"><%= @song.artist %></a>
# <a href="/genres/<%= @song.genre_id%>"><%= @song.genre %></a>

def index
  @songs = Song.all
end

  private 
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end 
end
