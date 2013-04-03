require 'saddle/base_endpoint'


module SaddleExample

  class RootEndpoint < Saddle::BaseEndpoint

    def health
      get 'health'
    end

  end

end
