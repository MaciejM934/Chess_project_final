class SessionController < ApplicationController
  def new
  end

  def create
    player = Player.find_by(nickname: params[:session][:index])
    if player and player.authenticate(params[:session][:password])
      log_in player
      redirect_to player
    else
      render 'new'
    end
  end

  def destroy
    log_out 
    redirect_to root_url
  end
end
