require 'saddle'


module SaddleExample

  class Client < Saddle::Client

    def self.default_options
      {
        :host => 'example.org',
        :port => 8080,
        :use_ssl => false,
      }
    end

  end

end
