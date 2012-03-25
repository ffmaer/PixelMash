class StartController < ApplicationController

  def start


  end

  def enter_names


    game = Game.where(:player1 => params["p1"], :player2 => params["p2"]).last
    if(!game.nil?)
      if(!game.completed.nil?)
        game = Game.new([:player1 => params["p1"], :player2 => params["p2"]])
      end
    end
    game.save
    cookies[:game_id] = game.id

    redirect_to :action => "play", :controller => "contest"

    #cookies[:game_status] = "started"

  end
end
