require 'open-uri'
require 'json'

class ContestController < ApplicationController

  before_filter :game_on, :except => :test





  def play



    @game = Game.find(cookies[:game_id])

  end

  def update

    @game = Game.find(cookies[:game_id])

    url = params["newImage"]

    if cookies[:order] == "first"
      @game.upload_p1(url)
    else
      @game.upload_p2(url)
    end


    if !@game.p1_file_name.nil? and !@game.p2_file_name.nil?
      @game.completed=true
      @game.save
    end

    respond_to do |format|
      format.json { head :ok }
    end


  end


  def save


  end


  def show

    @test = Test.find(1)


  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.create(params[:test])
  end


end
