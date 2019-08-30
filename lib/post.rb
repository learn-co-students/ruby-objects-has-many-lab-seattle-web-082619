require 'pry'

class Post
    @@all = []
    
    def initialize(title)
        @title = title
        @@all << self
    end

    def title()
        @title
    end 

    def self.all()
        @@all
    end

    def author=(author)
        author.posts << self
        @author = author
    end

    def author()
        @author
    end

    def author_name()
        if @author
            return @author.name
        end
        return nil
    end
end