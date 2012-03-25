class ApplicationController < ActionController::Base
  protect_from_forgery

  def game_on
    if cookies[:game_id].nil?
      redirect_to :action => "start", :controller => "start"
    end
  end

end
