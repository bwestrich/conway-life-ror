require 'test/unit'
require 'rubygems'
require 'shoulda-context'
require 'shoulda-matchers'
require '../../app/models/board'
require '../../app/models/cell'


class BoardTestSetup < Test::Unit::TestCase
  context "board setup for tests" do     
    should "set 1 cell to alive" do
    	cells = [[1]]
    	board = Board.new :zerosAndOnesArray => cells
    	assert board.cell(0,0).alive == true
        assert_equal 1, board.nrows
        assert_equal 1, board.ncolumns
    end   
    should "set 0 cell to dead" do
    	cells = [[0]]
        board = Board.new :zerosAndOnesArray => cells
    	assert board.cell(0,0).alive == false
    end   
    should "set column of cells" do
    	cells = [[0], [1]]
        board = Board.new :zerosAndOnesArray => cells
    	assert board.cell(0,0).alive == false
    	assert board.cell(1,0).alive == true
    end
    should "set row of cells" do
    	cells = [[0, 1]]
        board = Board.new :zerosAndOnesArray => cells
    	assert board.cell(0,0).alive == false
    	assert board.cell(0,1).alive == true
        assert_equal 1, board.nrows
        assert_equal 2, board.ncolumns
    end
  end 

  context "board setup using random seed" do
    should "set 1x1 cell to random value" do
        board = Board.new :nrows => 1, :ncolumns => 1
        puts "1x1 random board is \n#{board}"
    end 
    should "set 10x10 board to random values" do
        board = Board.new :nrows => 10, :ncolumns => 10
        puts "random board is \n#{board}"
    end 
  end 
  
end 

