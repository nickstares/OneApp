class Artist < ActiveRecord::Base
  has_many :items

  def self.all_grouped_by_first_initial
    order(:first_name).reduce({}) do |hash, artist|
      letter = artist.capitalized_first_initial
      hash[letter] ||= []
      hash[letter] << artist
      hash
    end
  end

  def capitalized_first_initial
    first_name.first.upcase
  end

  def fullname
    "#{first_name} #{last_name}"
  end
end
