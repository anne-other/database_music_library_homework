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

artist2 = Artist.new(
  {
    'name' => "Sum 41"
  }
)

artist1.save()
artist2.save()

album1 = Album.new(
  {
    'title' => ".5: The Gray Chapter",
    'genre' => "nu metal",
    'artist_id' => artist1.id()
  }
)

album1.save()

album2 = Album.new(
  {
    'title' => "All Hope Is Gone",
    'genre' => 'Metal',
    'artist_id' => artist1.id()
  }
)

album2.save()

album3 = Album.new(
  {
    'title' => "All Killer No Filler",
    'genre' => "Punk Rock",
    'artist_id' => artist2.id()
  }
)

album3.save()

binding.pry
nil
