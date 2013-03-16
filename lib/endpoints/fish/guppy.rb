require 'saddle/base_endpoint'

class Guppy < BaseEndpoint

  def get_all
    get 'get_all'
  end

end