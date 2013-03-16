require 'saddle/base_endpoint'

class Puppy < BaseEndpoint

  def get_all
    get 'get_all'
  end

  def scratch_belly(puppy_id, opt={})
    params = opt.merge({:puppy_id => puppy_id, :location => 'belly'})
    post 'scratch', params
  end

end