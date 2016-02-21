#require 'bundler/setup'
require 'test/unit'

#自分自身の名前から問題の番号箇所を取り出し，requireする
file_name = File.basename(__FILE__)
target_problem = file_name.match(/\_(\w+)/)
require "./"+target_problem[1]+".rb"

class TestEuler < Test::Unit::TestCase
  include Solver
  class << self
	  def startup
      p "exec"
      @calc_instance = ConcreteSolver.new
	  end

	  def cleanup
	  end
  end
    def setup
      @calc_instance = ConcreteSolver.new
    end
    def test_max_prime
      assert_true(calc_total_thousand(1,2,997))
    end

    def test_pythagorean
      assert_true(pythagorean?(3,4,5))
    end

    def test_ans
      assert_equal([200,375,425],@calc_instance.calc_ans)
    end
end
