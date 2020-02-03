class SongsController < ApplicationController
    def index 
        @song = Song.all
    end 
    def show 
        finds_song
    end 

    def new 
        @song = Song.new
    end 

    def create 
        @song = Song.new(params_path)
        @song.save
        re_direct
    end     

    def edit 
        finds_song
    end 

    def update 
        finds_song
        @song.update(params_path)
        re_direct
    end 


    private 

    def params_path
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end 
    def finds_song
        @song = Song.find_by_id(params[:id])
    end

    def re_direct
        redirect_to song_path(@song)
    end 
end
