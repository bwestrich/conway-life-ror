#require '../models/board'

class BoardController < ApplicationController

  def initialize 
    @board = Board.new :nrows => 10, :ncolumns => 10
  end 

  def blank
	@board_to_html = to_html(@board.to_s)
  end

  def start
  end

  def to_html string
  	html = string
  	html.gsub!("\n", "<br>")
  	#html.gsub!("0", " ")
  	#html.gsub!("1", ".")
  	puts html
  	return html
  	#board.to_s.gsub("\n", "<br>")
  end 
end
