module Jmeter
  class CommandLineGenerator
    def initialize args={}
      @profile = args[:profile]
      @guid = args[:guid]
    end

    def command
      "jmeter -n"
    end

    def profile
      "-t#{@profile}.jmx "
    end

    def output_file
      "-l#{@guid}_#{@profile}.log "
    end
  end
end