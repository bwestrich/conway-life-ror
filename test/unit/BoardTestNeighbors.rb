require 'test/unit'
require 'rubygems'
require 'shoulda-context'
require 'shoulda-matchers'
require '../../app/models/board'
require '../../app/models/cell'

class BoardTestNeighbors < Test::Unit::TestCase
  context "cell neighbors" do  
    setup do
    	cells = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    	@board = Board.new :zerosAndOnesArray => cells
    end    
    should "be 8 for middle cell" do
    	assert_equal 8, @board.neighbors(1, 1).length
    end   
    should "be 3 for corner cells" do
    	assert_equal 3, @board.neighbors(0, 0).length
    	assert_equal 3, @board.neighbors(0, 2).length
    	assert_equal 3, @board.neighbors(2, 0).length
    	assert_equal 3, @board.neighbors(2, 2).length
    end   
    should "be 5 for side cells" do
    	assert_equal 5, @board.neighbors(0, 1).length
    	assert_equal 5, @board.neighbors(1, 0).length
    	assert_equal 5, @board.neighbors(2, 1).length
    	assert_equal 5, @board.neighbors(1, 2).length
    end  
  end 

end 

