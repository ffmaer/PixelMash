class DisplayController < ApplicationController


  def display
    @game = Game.find(params[:id])
  end
end
