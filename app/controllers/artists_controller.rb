class ArtistsController < ApplicationController


  def index

    def group_by_letter(arr)
      arr.reduce({}) do |hash, artist|
        letter = artist[:first_name][0].upcase
        hash[letter] = []
        hash[letter] << artist
        hash
      end
    end
    @artists = group_by_letter(Artist.order("first_name"))


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
