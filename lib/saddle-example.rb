require 'saddle'



class SaddleExample < Saddle

  def default_options
    {
      :host => 'example.org',
      :port => 8080,
      :use_ssl => false,
    }
  end

end
