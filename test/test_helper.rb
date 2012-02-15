require 'test/unit'

this_files_dir= File.dirname(__FILE__)
lib_dir = File.expand_path(File.join(this_files_dir, '..', 'lib'))
$LOAD_PATH.unshift(lib_dir)

require 'jmeter'