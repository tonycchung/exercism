require 'minitest/autorun'
require_relative 'robot'

class RobotTest < MiniTest::Unit::TestCase
  def test_has_name
    assert_match /\w{2}\d{3}/, Robot.new.name
  end

  def test_name_sticks
    robot = Robot.new
    robot.name
    assert_equal robot.name, robot.name
  end

  def test_different_robots_have_different_names
    assert Robot.new.name != Robot.new.name
  end

  def test_reset_name
    robot = Robot.new
    name = robot.name
    robot.reset
    name2 = robot.name
    assert name != name2
    assert_match /\w{2}\d{3}/, name2
  end

  def test_no_same_name
    skip
    srand 1
    name1 = Robot.new.name
    srand 1
    name2 = Robot.new.name
    refute_equal name1, name2
  end
end
