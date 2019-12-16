require 'pry'

class Artist

    attr_accessor :name

    def initialize(name)
# binding.pry
        @name = name 
    end

    def songs
        @@all
    end
   
end
