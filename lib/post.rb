class Post

    attr_accessor :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def Post.all 
        @@all
    end

    def title
        @title
    end

    def author_name
        author == nil ? nil : self.author.name     
    end


end