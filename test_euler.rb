require 'bundler/setup'
require 'test/unit'
require './p3'

class TestEuler < Test::Unit::TestCase
  include Problem
  class << self
	  def setup
	  end

	  def cleanup
	  end
  end
	  def test_val
      assert_true(calc_prime(5))
	  end
    def test_max_prime
      assert_equal(29, calc_max_prime(13195))
    end

    def test_max_prime2
      assert_equal(1, calc_max_prime(600851475143))
    end
end
