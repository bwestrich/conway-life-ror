require 'test_helper'

require 'java'

class BlogPostTest < ActiveSupport::TestCase

    puts 'hello'
    puts "Calling Java from Ruby: #{java.util.Date.new().getTime()}"

end
