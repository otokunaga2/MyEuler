require 'bundler/setup'
require 'test/unit'

#自分自身のファイル名から問題の番号箇所を取り出し，requireする
file_name = File.basename(__FILE__)
target_problem = file_name.match(/\_(\w+)/)
require "./"+target_problem[1]+".rb"

class TestEuler < Test::Unit::TestCase
  include Solver
  class << self
	  def startup
	  end

	  def cleanup
	  end
  end
    def setup
      @instance = ConcreteSolver.new
      p @instance
    end
	  def test_val
      assert_equal(29,@instance.max_factor_prime(2,13195).max)
	  end
end
