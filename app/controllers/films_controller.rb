class FilmsController < ApplicationController
  def index
    @film = Film.all
  end

  def show
    id = params[:id]
    @films = Film.find(id)
  end

  def create
    @new_film = Film.create(film_params)
    puts @new_film
    redirect_to("/films/#{@new_film.id}")
  end


  private
  def film_params
    params.require(:film).permit(:title, :photo, :year, :synopsis)
  end

end
