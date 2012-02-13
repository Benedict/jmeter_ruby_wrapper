require "test_helper"

class CommandLineGeneratorTest < Test::Unit::TestCase

  def test_the_command_line_has_nongui_option
    clg = Jmeter::CommandLineGenerator.new
    assert_equal "jmeter -n", clg.base_command
  end

  def test_accepts_the_name_of_a_profile
    clg = Jmeter::CommandLineGenerator.new :profile => "AnnoyingUser"
    assert_equal "-tAnnoyingUser.jmx ", clg.profile
  end

  def test_chooses_the_output_file_based_on_unique_identifier_and_profile_name
    clg = Jmeter::CommandLineGenerator.new :profile => "AnnoyingUser", :guid => 4
    assert_equal "-l4_AnnoyingUser.log ", clg.output_file
  end

end