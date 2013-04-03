require 'saddle/base_endpoint'


module SaddleExample
  module Endpoints
    module Fish

      class Guppy < Saddle::BaseEndpoint

        def get_all
          get 'get_all'
        end

      end

    end
  end
end

