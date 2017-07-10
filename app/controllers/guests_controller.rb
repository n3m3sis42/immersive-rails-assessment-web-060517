class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    #@appearance = Appearance.new(guest_id: @guest.id)
  end

  def edit
    @guest = Guest.find(params[:id])
    @episodes = Episode.all
  end

  # def update
  #   byebug
  #   @guest = Guest.find(params[:id])
  #   params[:episodes].each {|episode| @appearance = Appearance.new(episode_id: episode.id, guest_id: @guest.id)
  #     redirect_to new_appearance_path(@appearance)}
  #   redirect_to guest_path(@guest)
  # end

end
