require 'saddle'

require 'saddle-example/version'


module SaddleExample

  class Client < Saddle::Client

    def self.host
      'example.org'
    end

    def self.port
      8080
    end

  end

end
