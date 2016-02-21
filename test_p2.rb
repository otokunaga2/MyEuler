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
      p "exec"
	  end

	  def cleanup
	  end
  end
  def setup
    @calc_instance = ConcreteSolver.new
  end
  def test_ans
    should_be_ans = @calc_instance.calc_ans(1,0)
    assert_not_equal(0,should_be_ans)
    p should_be_ans
  end
end
