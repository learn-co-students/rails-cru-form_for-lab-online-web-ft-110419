class GenresController < ApplicationController
    def show 
        finds_genre
    end 

    def new 
        @genre = Genre.new
    end 

    def create 
        @genre = Genre.new(params_path)
        @genre.save
        redirect_to genre_path(@genre)
    end     

    def edit 
        finds_genre
    end 

    def update 
        finds_genre
        @genre.update(params_path)
        redirect_to genre_path(@genre)
    end 

    private 

    def params_path
        params.require(:genre).permit(:name)
    end 
    def finds_genre
        @genre = Genre.find_by_id(params[:id])
    end
end
