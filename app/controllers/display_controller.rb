class DisplayController < ApplicationController

  before_filter :game_on

  def display
    @game = Game.find(cookies[:game_id])
  end
end
