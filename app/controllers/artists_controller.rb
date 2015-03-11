class ArtistsController < ApplicationController
  def index
    @artists = group_by_letter(Artist.order("first_name"))
    @artist = @artists[0]
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
