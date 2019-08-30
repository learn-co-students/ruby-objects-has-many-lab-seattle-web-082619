require 'pry'

class Author
    @@all = []
    
    def initialize(name)
        @posts = []
        @name = name
        @@all << self
    end

    def self.all()
        @@all
    end

    def self.post_count()
        post_count = 0
        @@all.each do |author|
            author.posts.each do |post|
                post_count += 1
            end
        end
        return post_count - 1
    end

    def name()
        @name
    end

    def posts()
        @posts
    end

    def add_post(post)
        post.author = self
        @posts << post
    end
    
    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
        if !@posts.include?(post)
            @posts << post
        end
    end
end