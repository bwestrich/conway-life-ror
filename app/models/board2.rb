class Board2 < ActiveRecord::Base
  attr_accessible :ncolumns, :nrows, :percentLive

  def board
  	@nrows = 33 if @nrows == nil
  	@ncolumns = 44 if @ncolumns == nil
    return Board.new :ncolumns => @ncolumns, :nrows => @nrows 
  end 

end
