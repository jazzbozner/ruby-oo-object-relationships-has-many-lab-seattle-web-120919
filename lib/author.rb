require 'pry'
require_relative 'post.rb'

class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select { |post| post.author }
    end

    def add_post(post)
        # #add_post takes in an argument of a post and 
        # associates that post with the author by telling 
        # the post that it belongs to that author.

        post.author = self
    end

    def add_post_by_title(title)
        # binding.pry
        self.add_post(Post.new(title))
        # new_post = Post.new(title)
        # new_post.author = self
    end

    def self.post_count
        Post.all.length
    end

end
