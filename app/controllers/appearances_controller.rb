class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create


    rating = params["appearance"]["rating"]
    # rating = params["appearance"][""]
    appearance = Appearance.create(rating: rating)
    redirect_to appearance_path(appearance)
  end

end
