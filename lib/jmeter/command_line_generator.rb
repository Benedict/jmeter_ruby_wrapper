require 'socket'

module Jmeter
  class CommandLineGenerator
    def initialize args={}
      @plan = args[:plan]
      @guid = args[:guid]
      @duration = args[:duration]
      @threads = args[:threads]
    end

    def base_command
      "jmeter -n"
    end

    def plan
      "-t#{@plan}.jmx "
    end

    def output_file
      "-l#{@guid}_#{@plan}.log "
    end

    def main_log
      "-j#{@guid}_jmeter.log "
    end

    def duration
      "-Gduration=#{@duration}"
    end

    def threads
      "-Gthreads=#{@threads}"
    end

    #Yep, this isn't tested, because it's just standard Ruby.
    def local_port
      socket = Socket.new(:INET, :STREAM, 0)
      socket.bind(Addrinfo.tcp("127.0.0.1", 0))
      port = socket.local_address.ip_port
      socket.close
      port
    end

  end
end