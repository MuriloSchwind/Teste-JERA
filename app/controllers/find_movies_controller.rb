class FindMoviesController < ApplicationController
  def index
    @term = params[:term]
    search = Tmdb::Search.new
    search.resource('movie')
    search.query(@term)

    @finded_option = search.fetch
  end
end
