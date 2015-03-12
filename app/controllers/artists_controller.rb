class ArtistsController < ApplicationController


  def index

    @artists = Artist.order("first_name").all_grouped_by_first_initial  



  end
  
  def show
    @artist = Artist.find(params[:author_id])
  end


  # [artist1, artist2, artist3]
  # {
  #    a => [artist1, artist2],
  #    b => [artist3]
  #}
end
