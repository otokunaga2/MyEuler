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
	  end

	  def cleanup
	  end
  end
  def setup
    p "init"
    @calc_instance = ConcreteSolver.new
  end

  def test_ans
    assert_equal(100,@calc_instance.calc_ans)
  end
end
