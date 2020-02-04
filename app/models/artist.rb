class Artist < ActiveRecord::Base
    has_many :songs
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
end