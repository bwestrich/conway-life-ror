require 'test/unit'
require 'rubygems'
require 'shoulda-context'
require 'shoulda-matchers'
require '../../app/models/cell'

class CellTest < Test::Unit::TestCase

  context "new cell" do 
    setup do
    	@cell = Cell.new 
    end
    should "not be alive by default" do
    	#puts "false cell to_s = '#{@cell}'"
    	assert @cell.alive == false
    end 
  end 

  context "filter live neighbors" do
  	setup do
        @cell = Cell.new
        @cells = []
        @cells << @cell
  	end
    should "equal 1 if we have one neighbor and it is alive" do
        @cell.alive=true
        assert_equal 1, @cell.filterLiveCells(@cells).length
    end
    should "equal 0 if we have one neighbor and it is not alive" do
        @cell.alive=false
        assert_equal 0, @cell.filterLiveCells(@cells).length
    end
  end

end 

