class View

	def create_gossip #demender a l utilisaatuer les params
		puts "author"
		print ">"
		author = gets.chomp.to_s
		puts "content"
		print ">"
		content = gets.chomp.to_s
	return params = {"#{author}"=>"#{content}"}
	end	
	def index_gossip
	 @controller.index_gossip
	end	

	def destroy
		puts "lequel veux-tu supprimé!1er..."
		params = gets.chomp.to_i
		
	end	
end