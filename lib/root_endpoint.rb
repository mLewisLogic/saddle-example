require 'saddle/endpoint'


module SaddleExample

  class RootEndpoint < Saddle::TraversalEndpoint

    def health
      get 'health'
    end

  end

end
