class FilmsController < ApplicationController
  def index
    @film = Film.all
  end

  def show
    id = params[:id]
    @films = Film.find(id)
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.create!(film_params)
    redirect_to films_url
  end

  def update

  end

  def destroy
    Film.find(params[:id]).destroy
    redirect_to("/films")
  end


  private
  def film_params
    params.require(:film).permit(:title, :photo, :genre, :year, :synopsis)
  end
end
