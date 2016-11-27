
class Blog
    attr_reader :blog_title

    def initialize( blog_title )
      @blog_title = blog_title
      @posts = []
    end

	def add_post(post)
    	@posts.push(post)
    end

    def publish_front_page
    	@posts.each do |pst|
    		puts pst.title #En vez de llamar a publish_post
    		puts "***********"
    		\n"
    		puts pst.text
    		puts "-----------"
    		\n"
    		if pst.sponsor != "NONE"
    			puts pst.sponsor
    		else
    			
    		end

    	end
    end



end

class Post
	attr_accessor :title, :date, :text

	def initialize(title, date, text, sponsor="NONE")
		@title = title
		@date = date #Time.new crea fecha 
		@text = text
		@sponsor = sponsor
		@@post_number ||= 0
		@@post_number += 1
	end

	def publish_post
    	puts "este es el titulo: #{title}"
    	puts text
    end
end


blog = Blog.new("Mi primer blog")

blog.add_post(Post.new("Primer post", "25/10/2016", "Este es el primer post de todos"))
blog.add_post(Post.new("Segundo post", "26/10/2016", "Este es el segundo post de todos", "SPONSOR TEXT 2"))
blog.add_post(Post.new("Tercer post", "27/10/2016", "Este es el tercer post de todos"))

blog.publish_front_page
