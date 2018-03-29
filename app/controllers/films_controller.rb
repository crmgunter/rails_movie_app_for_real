class FilmsController < ApplicationController
  def index
    @film = Film.all
  end

  def show
    id = params[:id]
    @films = Film.find(id)
  end

end
