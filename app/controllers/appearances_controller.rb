class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.find(params[:id])
    redirect_to appearance_path(@appearance)
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

end
