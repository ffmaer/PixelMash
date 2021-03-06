class DisplayController < ApplicationController


  def display
    @game = Game.find(params[:id])
  end

  def vote_left

    @game = Game.find(params[:id])
    @game.vote1 += 1
    @game.save

    data = [:left => @game.vote1, :right => @game.vote2]
    respond_to do |format|
          format.json { render :json => data.to_json }
    end


  end

  def vote_right
    @game = Game.find(params[:id])
    @game.vote2 += 1
    @game.save

    data = [:left => @game.vote1, :right => @game.vote2]
    respond_to do |format|
          format.json { render :json => data.to_json }
    end
  end

end
