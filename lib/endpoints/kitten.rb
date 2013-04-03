require 'saddle/base_endpoint'


module SaddleExample
  module Endpoints

  class Kitten < Saddle::BaseEndpoint

    def get_all
      get 'get_all'
    end

    def scratch_head(kitten_id, opt={})
      params = opt.merge({:kitten_id => kitten_id})
      post 'scratch_head', params
    end

  end

  end
end
