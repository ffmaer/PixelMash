class StartController < ApplicationController

  def start

    cookies.delete :game_id
  end

  def enter_names


    new_game = false
    order = "first"


    game = Game.where(:player1 => params["p1"], :player2 => params["p2"]).last

    if(game.nil?)
      game = Game.where(:player1 => params["p2"], :player2 => params["p1"]).last

      if(game.nil?)
        new_game = true

      else
        if game.completed?
          new_game = true

        else
          order = "second"
        end

      end

    else

      if game.completed?
         new_game = true
      else
        order = "first"
      end


    end

    if new_game
      game = Game.new(:player1 => params["p1"], :player2 => params["p2"])
      game.save
    end


    cookies[:order] = order
    cookies[:game_id] = game.id

    redirect_to :action => "play", :controller => "contest"

  end
end
