class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params)
    redirect_to appearance_path(@appearance)
  end

  def show
    @appearance = Appearance.find(params[:id])
    @guest = Guest.find(@appearance.guest_id)
    @episode = Episode.find(@appearance.episode_id)
  end

  def index
    @appearances = Appearance.all
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
