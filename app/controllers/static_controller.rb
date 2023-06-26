class StaticController < ApplicationController
    def index
    # ale że jest środek nocy a ja czytam o lorem ipsum... xD
    @some_variable = 123
    @players = Player.all
    @boards = Board.all
    end
end
