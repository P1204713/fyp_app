class GameController < ApplicationController
  before_action :authenticate_user! #, only: [:]
  
  def game
    @game = Game.find(params[:id] = Random.rand(1...60))
  end
  
  #def index
  #end

  #def create
  #end

  #def update
  #end

  #def main
  #end
end
