class Board 
attr :cells, :nrows, :ncolumns

def initialize hash 
	zerosAndOnesArray = hash[:zerosAndOnesArray]
	nrows = hash[:nrows]
	ncolumns = hash[:ncolumns]
	#puts "\nzerosAndOnesArray=#{zerosAndOnesArray}, nrows=#{nrows}, ncolumns=#{ncolumns}"
	if (zerosAndOnesArray != nil)
		initZerosAndOnesArray zerosAndOnesArray
	else 
		initRandom nrows, ncolumns
	end 
end 

def initZerosAndOnesArray zerosAndOnesArray
	cells = []
	zerosAndOnesArray.each do |column| 
		columnOfCells = []
		column.each do |zeroOrOne| 
			cell = Cell.new
			cell.alive=(translateNumberToBoolean(zeroOrOne))
			columnOfCells << cell
		end 
		cells << columnOfCells
	end
	finalInit(cells)
end 

def finalInit cells
	@cells = cells
	@nrows = cells.length
	@ncolumns = cells[0].length
end

def initRandom nrows, ncolumns
	percentAlive = 42
	newCells = []
	(0..nrows - 1).each do |currentRow|
		newRow = []
		(0..ncolumns - 1).each do |currentColumn|
			newCell = Cell.new
			randomNumber = 1 + rand(100)
			newCell.alive=true if randomNumber <= percentAlive
			newRow << newCell
		end
		newCells << newRow
	end 
	finalInit(newCells)
end 

def translateNumberToBoolean number 
	return false if number == 0
	return true
end	

def cell(row, column)
	@cells[row][column]
end 

def neighbors(row, column)
	neighbors = []
	startRow, endRow = startEndNeighborIndex(row, @nrows)	
	startColumn, endColumn = startEndNeighborIndex(column, @ncolumns)
	(startRow..endRow).each do |currentRow| 
		(startColumn..endColumn).each do |currentColumn| 
			unless (currentRow == row and currentColumn == column) 
				neighbors << cell(currentRow, currentColumn)
			end
		end 
	end 
	return neighbors
end 

def startEndNeighborIndex selfIndex, max
   start = selfIndex - 1
   start = 0 if start < 0
   endIndex = selfIndex + 1
   endIndex = max - 1 if endIndex >= max
   return start, endIndex
end

def to_s
	result = ""
	(0..@nrows - 1).each do |currentRow| 
		#following line works in ruby 1.8.7 but not in jruby
		#jruby array to_s apparently doesn't call custom to_s
		#on array elements
		#result += @cells[currentRow].to_s + "\n"
		#instead, we have to replace the above 1 line with 4 lines....
		(0..@ncolumns - 1).each do |currentColumn|
			result += cell(currentRow, currentColumn).to_s
		end 
		result += "\n"
	end 
	return result
end

def evolve
	newCells = []
	(0..@nrows - 1).each do |currentRow|
	    newRow = [] 
		(0..@ncolumns - 1).each do |currentColumn| 
			#puts "about to call neighbors on row #{currentRow}, column #{currentColumn}"
			neighbors = neighbors(currentRow, currentColumn)
			newCell = cell(currentRow, currentColumn).evolve(neighbors)
			newRow << newCell
		end	
		newCells << newRow
	end
	#puts "evolved board with #{newCells.length} rows and #{newCells[0].length} columns."
	@cells = newCells
end

end 
