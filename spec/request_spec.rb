require 'saddle'
require 'saddle-example'


describe SaddleExample do
  context "Testing endpoint action requests" do

    before :each do
      # Stub out each of our request methods
      [:get, :post, :put, :delete].each do |method|
        Saddle::Requester.any_instance.stub(method).and_return{ nil }
      end
      @client = SaddleExample::Client.create
    end


    it "should hit the health check" do
      Saddle::Requester.any_instance.should_receive(:get) do |url|
        url.should eq('/health')
      end
      @client.health
    end


    it "should hit the kitten get_all endpoint" do
      Saddle::Requester.any_instance.should_receive(:get) do |url|
        url.should eq('/kitten/get_all')
      end
      @client.kitten.get_all
    end

    it "should hit the kitten scratch_head endpoint" do
      kitten_id = 'abcd1234'
      Saddle::Requester.any_instance.should_receive(:post) do |url, params|
        url.should eq("/kitten/scratch_head")
        params.should eq({:kitten_id => kitten_id})
      end
      @client.kitten.scratch_head(kitten_id)
    end


    it "should hit the puppy get_all endpoint" do
      Saddle::Requester.any_instance.should_receive(:get) do |url|
        url.should eq('/puppy/get_all')
      end
      @client.puppy.get_all
    end

    it "should hit the puppy scratch_belly endpoint" do
      puppy_id = 'abcd1234'
      Saddle::Requester.any_instance.should_receive(:post) do |url, params|
        url.should eq("/puppy/scratch")
        params.should eq({
          :puppy_id => puppy_id,
          :location => 'belly',
        })
      end
      @client.puppy.scratch_belly(puppy_id)
    end


    it "should hit the guppy get_all endpoint" do
      Saddle::Requester.any_instance.should_receive(:get) do |url|
        url.should eq('/fish/guppy/get_all')
      end
      @client.fish.guppy.get_all
    end

  end
end
