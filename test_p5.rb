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
    end
	  def test_multiple_for_10
      #assert_equal(2520,@instance.calc_ans(10))
	  end

	  def test_multiple_for_20
      assert_equal(2520,@instance.calc_ans(20))
	  end
end
