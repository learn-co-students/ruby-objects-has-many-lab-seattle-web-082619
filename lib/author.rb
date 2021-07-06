class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts 
        Post.all.select { |p| p.author == self }
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def Author.post_count
        Post.all.collect {  |p| p.author == self}.length
    end


end