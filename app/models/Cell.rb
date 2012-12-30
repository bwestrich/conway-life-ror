class Cell
	attr :alive, true
	
	def initialize
		@alive = false
	end 

	def evolve neighbors
		numberOfLiveNeighbors = filterLiveCells(neighbors).length
		evolvedCell = Cell.new
		if @alive then 
			alive = case numberOfLiveNeighbors
				#in next line, in jruby, can't use a colon instead of "then"
				when 0..1 then false
				when 2..3 then true
				else false
			end
		else 
			alive = numberOfLiveNeighbors == 3
		end 
		evolvedCell.alive=alive
		return evolvedCell	
	end

	def filterLiveCells(cells)
		liveCells = cells.select { |cell| cell.alive}
	end

	def to_s
		if @alive then 
			"1"
		else 
			"0"
		end
	end
end 