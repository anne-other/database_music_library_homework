require('pry')
require_relative('../models/artist.rb')
require_relative('../models/album.rb')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new(
  {
    'name' => "Slipknot"
  }
)

artist1.save()

album1 = Album.new(
  {
    'title' => ".5: The Gray Chapter",
    'genre' => "nu metal",
    'artist_id' =>artist1.id()
  }
)

album1.save()

binding.pry
nil
