class ItemsController < ApplicationController
  def index

  end

  def show
    @artist = Artist.find(params[:artist_id])
  end
end
