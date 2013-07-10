require 'saddle/endpoint'


module SaddleExample
  module Endpoints
    module Fish

      class Guppy < Saddle::TraversalEndpoint

        def get_all
          get 'get_all'
        end

      end

    end
  end
end
