require 'saddle/endpoint'


module SaddleExample
  module Endpoints

    class Puppy < Saddle::TraversalEndpoint

      # Override the relative path because there is a dash
      def _relative_path
        'puppiez-endpoint'
      end


      def get_all
        get 'get_all'
      end

      def scratch_belly(puppy_id, opt={})
        params = opt.merge({:puppy_id => puppy_id, :location => 'belly'})
        post 'scratch', params
      end

    end

  end
end
