require 'lasso/base_endpoint'

class Guppy < BaseEndpoint

  def get_all
    get 'get_all'
  end

  def look_at
    post 'look_at'
  end

end