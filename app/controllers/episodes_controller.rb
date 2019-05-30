class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.valid?
       @episode.save
    else
     render :new
    end
     redirect_to episode_path(episode)
  end


  def show
    @episode = Episode.find(params[:id])
  end

private

  def episode_params
    params.require(:episode).permit(:date, :number)
  end


end
