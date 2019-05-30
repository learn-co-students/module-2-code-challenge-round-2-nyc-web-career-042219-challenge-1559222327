class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @episodes = Episode.all
    @guests = Guest.all
  end

  def create
    @appearance = Appearance.new(appearance_params)
    @episode = Episode.find(appearance_params[:episode_id])
    if @appearance.save
      redirect_to episode_path(@episode)
    else
      @episodes = Episode.all
      @guests = Guest.all
      render :new
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
