require 'test/unit'
require 'rubygems'
require 'shoulda-context'
require 'shoulda-matchers'
require '../../app/models/cell'

class CellTestEvolve < Test::Unit::TestCase
  context "evolving" do 
    setup do
    	@cell = Cell.new 
    	@neighbor = Cell.new 
    	@neighbor.alive=true
   		@neighbors = []
    end
    context "from live" do
    	setup do
    		@cell.alive=true
    	end 
    	should "die if undercrowded" do
    		@neighbors << @neighbor
    		assert @cell.evolve(@neighbors).alive == false
    	end
    	should "live if optimally crowded" do
    		@neighbors << @neighbor
    		@neighbors << @neighbor
    		assert @cell.evolve(@neighbors).alive == true
    		@neighbors << @neighbor
    		assert @cell.evolve(@neighbors).alive == true
    	end
    	should "die if overcrowded" do
    		(1..4).each do ||
    			@neighbors << @neighbor
	    	end 
    		assert @cell.evolve(@neighbors).alive == false
    	end
    end 
    context "from dead" do
    	setup do
    		@cell.alive=false
    	end 
    	should "die if less than 3 live neighbors" do
    		(1..2).each do ||
    			@neighbors << @neighbor
	    	end 
    		assert @cell.evolve(@neighbors).alive == false
    	end
    	should "live if 3 live neighbors crowded" do
    		(1..3).each do ||
    			@neighbors << @neighbor
	    	end 
    		assert @cell.evolve(@neighbors).alive == true
    	end
    	should "die if more than 3 live neighbors" do
    		(1..4).each do ||
    			@neighbors << @neighbor
	    	end 
    		assert @cell.evolve(@neighbors).alive == false
    	end
    end 
  end
end 

