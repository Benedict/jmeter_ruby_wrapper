require "test_helper"

class CommandLineGeneratorTest < Test::Unit::TestCase

  GUID = 4
  PROFILE = "AnnoyingUser"

  def test_the_command_line_has_nongui_option
    clg = Jmeter::CommandLineGenerator.new
    assert_equal "jmeter -n", clg.base_command
  end

  def test_accepts_the_name_of_a_profile
    clg = Jmeter::CommandLineGenerator.new :profile => PROFILE
    assert_equal "-t#{PROFILE}.jmx ", clg.profile
  end

  def test_chooses_the_output_file_based_on_unique_identifier_and_profile_name
    clg = Jmeter::CommandLineGenerator.new :profile => PROFILE, :guid => GUID
    assert_equal "-l#{GUID}_#{PROFILE}.log ", clg.output_file
  end

  def test_chooses_a_log_file_with_guid_for_the_main_log
    clg = Jmeter::CommandLineGenerator.new :profile => PROFILE, :guid => GUID
    assert_equal "-j#{GUID}_jmeter.log ", clg.main_log
  end

end