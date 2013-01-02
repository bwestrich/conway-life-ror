class Board2 < ActiveRecord::Base
  attr_accessible :ncolumns, :nrows, :percentLive

  def board
  	#puts "in board(), self attributes are nrows=#{self.nrows}, ncolumns=#{self.ncolumns}"
  	#puts "in board(),  attributes are nrows=#{@nrows}, ncolumns=#{@ncolumns}"
  	@nrows = 14 if @nrows == nil
  	@ncolumns = 35 if @ncolumns == nil
    return Board.new :ncolumns => @ncolumns, :nrows => @nrows 
  end 

end
