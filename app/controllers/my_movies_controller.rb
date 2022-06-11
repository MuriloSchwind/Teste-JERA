class MyMoviesController < ApplicationController
  def index
    my_movies = current_user.my_movies
    @my_movies = []      
    
    my_movies.each do |movie|   
      movie_detail = Tmdb::Movie.detail(movie.movie_identification)
        @my_movies.push(movie_detail)  
    end      
    @my_movies 
  end

  def create
    current_user.my_movies.create(movie_identification: params[:movie_identification])
    redirect_to my_movies_path
  end
  
  def destroy
    movie = current_user.my_movies.find_by(movie_identification: params[:id])
    movie.destroy
    redirect_to my_movies_path
  end
end
