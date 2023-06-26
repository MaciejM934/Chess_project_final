class SessionController < ApplicationController
  def new
  end

  def create
    if params[:session].present? && params[:session][:index].present? && params[:session][:password].present?
      player = Player.find_by(nickname: params[:session][:index])
      if player && player.authenticate(params[:session][:password])
        log_in player
        redirect_to player
      else
        render 'new'
      end
    else
      render 'new'
    end
  end
  

  def destroy
    log_out 
    redirect_to root_url
  end
end
