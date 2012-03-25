require 'open-uri'
require 'json'

class ContestController < ApplicationController


  def play

    @result = JSON.parse(open("http://api.tumblr.com/v2/blog/derekg.org/posts?id=7431599279&api_key=mdCP61q24Uz2z5vYdNIT1bdRKjsydnJ8CiVPEmFwyunHj7s4UL").read)


    @test = Test.find(1)


  end


  def update



  p = Test.new
  url = "http://ocdevel.com/sites/ocdevel.com/files/images/rails.png"
  p.upload_image(url)

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
