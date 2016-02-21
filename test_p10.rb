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
  def test_prime
    assert_true(@calc_instance.prime?(2))
  end

  def test_prime2
    assert_true(@calc_instance.prime?(7))
  end

  def test_prime3
    assert_true(@calc_instance.prime?(11))
  end

  def test_prime4
    assert_false(@calc_instance.prime?(100))
  end
  def test_ans
    assert_not_equal(0,@calc_instance.calc_ans(1))
  end
end
