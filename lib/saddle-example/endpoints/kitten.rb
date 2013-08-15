require 'saddle/endpoint'


module SaddleExample
  module Endpoints

    class Kitten < Saddle::TraversalEndpoint

      # Hit this endpoint without appending an action
      def top
        get(nil)
      end

      def get_all
        get('get_all')
      end

      def by_id(kitten_id)
        create_resource_endpoint(KittenResource, kitten_id)
      end

    end

    class KittenResource < Saddle::ResourceEndpoint
      def info(opt={})
        get('info', opt)
      end
    end
  end
end
