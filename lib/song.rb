require 'pry'
class Song

    attr_accessor :name
    @@all = [ ]

    def initialize(name)
        binding.pry
        @name = name
        @@all << name
    end

    def self.all
        @@all
    end
    
end