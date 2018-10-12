class Genre
	attr_reader(:name)
	@@all = []

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def songs
		Song.all.select {|song| song.genre == self}
	end

	def artists
		songs.map {|song| song.artist}
	end

	def self.all
		@@all
	end

end