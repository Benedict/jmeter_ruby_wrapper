require "test_helper"

class CommandLineGeneratorTest < Test::Unit::TestCase

  def test_the_command_line_has_nongui_option
    clg = Jmeter::CommandLineGenerator.new
    assert_equal "jmeter -n", clg.command
  end

end