require_relative 'gossip'
require_relative 'view'

class Controller
  
	def initialize
		@view = View.new#declaration de view

	end	

  def create_gossip
    params = @view.create_gossip.to_a
    gossip = Gossip.new("#{params[0][0]}","#{params[0][1]}")
    gossip.save
  end	

  def index_gossip
  	array = Gossip.new("a","b")
    Gossip.all#affiche les potin
  end	

  def destroy
    params = @view.destroy
    gossip = Gossip.new("#{params}","b")
    gossip.destroy
    gossip.put_change
  end	

end
