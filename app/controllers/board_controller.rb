#require '../models/board'

class BoardController < ApplicationController
  def blank
	@board = Board.new :nrows => 10, :ncolumns => 10
  end

  def start
  end
end
