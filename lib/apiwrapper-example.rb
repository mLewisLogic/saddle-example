require 'apiwrapper'



class ApiwrapperExample < ApiWrapper


  private

  def self.default_options
    {
      :host => 'example.org',
      :port => 8080,
      :post_json => true,
      :use_ssl => true,
    }
  end

  # Attach each of your endpoints here
  require 'apiwrapper-example/kitten'
  require 'apiwrapper-example/puppy'
  def self.endpoints
    [
      Kitten,
      Puppy,
    ]
  end

end
