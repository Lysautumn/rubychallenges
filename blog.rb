class Blog
  @@all_blog_posts = []
  @@num_blog_posts = 0
  def self.all
    @@all_blog_posts
  end
  def self.add(words)
    @@all_blog_posts << words
    @@num_blog_posts += 1
  end
  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Author:\n #{post.author}"
      puts "Post:\n #{post.content}"
      puts "Created:\n #{post.created_at}"
    end
  end
end
class BlogPost < Blog
  def self.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your name:"
    post.author = gets.chomp
    puts "Your blog content:"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Do you want to create another blog post! Y/N"
    create if gets.chomp.downcase == 'y'
  end
  def title
    @title
  end
  def title=(title)
    @title = title
  end
  def created_at
    @created_at
  end
  def created_at=(created_at)
    @created_at = created_at
  end
  def author
    @author
  end
  def author=(author)
    @author = author
  end
  def content
    @content
  end
  def content=(content)
    @content = content
  end
  def date
    @date
  end
  def date=(date)
    @date = date
  end
  def save
    BlogPost.add(self)
  end
end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
