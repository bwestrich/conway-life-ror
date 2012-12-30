require 'test/unit/testsuite'
require 'test/unit/ui/console/testrunner'
require 'boardtestevolve'
require 'boardtestneighbors'
require 'boardtestsetup'
require 'celltest'
require 'celltestevolve'

# no code needed after the above code, as these 
# require statements cause the tests to run! 

=begin
http://stackoverflow.com/questions/3380162/ruby-unit-test-add-a-test-suite-to-an-already-existing-test-suite
class GameOfLifeTestSuite
	def self.suite
		suite = Test::Unit::TestSuite.new
		#suite << BoardTestEvolve.suite
		#suite << BoardTestNeighbors.suite
		....
		return suite
	end
end
#Test::Unit::UI::Console::TestRunner.run(GameOfLifeTestSuite)
=end