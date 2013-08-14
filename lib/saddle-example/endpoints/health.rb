require 'saddle/endpoint'


module SaddleExample
  module Endpoints

    class Health < Saddle::TraversalEndpoint

      ABSOLUTE_PATH = ''

      def check
        get('health')
      end

    end

  end
end
