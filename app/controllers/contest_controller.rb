require 'open-uri'
require 'json'

class ContestController < ApplicationController

  before_filter :game_on



  def play

    @result = JSON.parse(open("http://api.tumblr.com/v2/blog/derekg.org/posts?id=7431599279&api_key=mdCP61q24Uz2z5vYdNIT1bdRKjsydnJ8CiVPEmFwyunHj7s4UL").read)

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
