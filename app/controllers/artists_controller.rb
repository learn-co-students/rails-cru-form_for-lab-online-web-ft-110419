class ArtistsController < ApplicationController
    def show 
        @artist = Artist.find_by_id(params[:id])
    end 

    def new 
        @artist = Artist.new
    end 

    def create 
        @artist = Artist.new(params_path)
        @artist.save
        redirect_to artist_path(@artist)
    end     

    def edit 
        @artist = Artist.find_by_id(params[:id])
    end 

    def update 
        @artist = Artist.find_by_id(params[:id])
        @artist.update(params_path)
        redirect_to artist_path(@artist)
    end 

    private 

    def params_path 
        params.require(:artist).permit(:name, :bio)
    end 
end
