require 'test/unit'
require 'rubygems'
require 'shoulda-context'
require 'shoulda-matchers'
require '../../app/models/board'
require '../../app/models/cell'

class BoardTestEvolve < Test::Unit::TestCase
  context "4x4 cell" do  
    setup do
    	cells = [[1,0,1,1], [0,1,0,0], 
    			 [1,1,1,0], [0,0,0,1]]
    	@board = Board.new :zerosAndOnesArray => cells
    	puts "First generation = \n#{@board}"
    end    
    should "have correct children" do
    	@board.evolve
    	puts "Second generation = \n#{@board}"
    end   
    should "have correct descendants" do
    	evolve(@board, 2, 3)
    end  
begin    
    should "count generations" do
      assert_equal 0, @board.ngenerations
      @board.evolve
      assert_equal 1, @board.ngenerations 
    end 
end     
  end 

  context "10x10 random cell" do
  	should "not die for a while" do
  		board = Board.new :nrows => 10, :ncolumns => 10
  		evolve(board, 1, 4)
  	end 

  end 

  def evolve(board, start, finish)
   	(start..finish).each do |n|
		board.evolve
		puts "##{n} generation = \n#{board}"
   	end
  end
  
end 

