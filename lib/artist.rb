class Artist
	attr_reader(:name, :genres)
	@@all = []
	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def new_song(name, genre)
		Song.new(name, self, genre)
	end

	def songs
		Song.all.select {|song| song.artist == self}
	end

	def genres
		songs.map {|song| song.genre}
	end

	def self.all
		@@all
	end
end