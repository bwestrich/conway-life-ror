class Board2 < ActiveRecord::Base
  attr_accessible :ncolumns, :nrows, :percentLive

  def board
  	#puts "in board(), self attributes are nrows=#{self.nrows}, ncolumns=#{self.ncolumns}"
  	#puts "in board(),  attributes are nrows=#{@nrows}, ncolumns=#{@ncolumns}"
    return Board.new :ncolumns => self.ncolumns, :nrows => self.nrows, :percentInitiallyAlive => self.percentLive
  end

end
