class FilmsController < ApplicationController
  def index
    @film = Film.generate(rand(100))
  end
end
