require 'test/unit'
require './p6'

file_name = File.basename(__FILE__)  
#file_name.grep('test'
class TestEuler < Test::Unit::TestCase
  include Solver
  class << self
	  def setup
	  end

	  def cleanup
	  end
  end
  def setup
  end
  def cleanup
  end

	def test_is_prime
    assert_true(prime?(5))
	end

  def test_index_of_prime
    assert_equal(2,count_prime_index(10001))
  end
end
