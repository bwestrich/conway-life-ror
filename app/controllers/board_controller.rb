#require '../models/board'

class BoardController < ApplicationController

  def initialize 
  	getBoard
  end 

  def new
  	clearBoard
  	getBoard
  end

  def evolve
  	@board.evolve
  end

#below here are utility methods  

  def getBoard
  	#@board = session[:board]
  	@board = $board
  	if (@board == nil) then 
       puts "initializing board controller"
 	   @board = Board.new :nrows => 20, :ncolumns => 80
 	   #session[:board] = @board
 	   $board = @board
  	end 
  end 

  def clearBoard
  	$board = nil
  end 

end
