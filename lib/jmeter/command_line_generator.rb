require 'socket'

module Jmeter
  class CommandLineGenerator
    def initialize args={}
      @profile = args[:profile]
      @guid = args[:guid]
    end

    def base_command
      "jmeter -n"
    end

    def profile
      "-t#{@profile}.jmx "
    end

    def output_file
      "-l#{@guid}_#{@profile}.log "
    end

    #Yep, this isn't tested, because it's just standard Ruby.
    def random_available_local_port
      socket = Socket.new(:INET, :STREAM, 0)
      socket.bind(Addrinfo.tcp("127.0.0.1", 0))
      port = socket.local_address.ip_port
      socket.close
      port
    end

  end
end