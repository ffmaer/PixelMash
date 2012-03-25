require 'open-uri'
require 'json'

class ContestController < ApplicationController

  before_filter :game_on, :except => :test



  def test

    api_key = "mdCP61q24Uz2z5vYdNIT1bdRKjsydnJ8CiVPEmFwyunHj7s4UL"
    data = JSON.parse(open("http://api.tumblr.com/v2/blog/hacknyhack.tumblr.com/posts/photo?api_key="+api_key).read)


    data = data["response"]["posts"]
    @result = []
    data.each do |d|
      @result << d["photos"][0]["alt_sizes"][1]["url"]
    end

  end

  def play

    api_key = "mdCP61q24Uz2z5vYdNIT1bdRKjsydnJ8CiVPEmFwyunHj7s4UL"
        data = JSON.parse(open("http://api.tumblr.com/v2/blog/hacknyhack.tumblr.com/posts/photo?api_key="+api_key).read)


        data = data["response"]["posts"]
        @result = []
        data.each do |d|
          @result << d["photos"][0]["alt_sizes"][1]["url"]
        end

    #@result = JSON.parse(open("http://api.tumblr.com/v2/blog/derekg.org/posts?id=7431599279&api_key=mdCP61q24Uz2z5vYdNIT1bdRKjsydnJ8CiVPEmFwyunHj7s4UL").read)

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
