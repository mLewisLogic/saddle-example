require 'saddle'
require 'saddle-example'


describe SaddleExample do
  context "Testing endpoint action requests" do

    before :each do
      @client = SaddleExample::Client.create
      # Stub out each of our request methods
      [:get, :post, :put, :delete].each do |method|
        @client.requester.stub(method).and_return{ nil }
      end
    end


    it "should hit the health check" do
      @client.requester.should_receive(:get) do |url|
        url.should eq('/health')
      end
      @client.health
    end


    it "should hit the kitten get_all endpoint" do
      @client.requester.should_receive(:get) do |url|
        url.should eq('/kitten/get_all')
      end
      @client.kitten.get_all
    end

    it "should hit the info endpoint for a specific kitten" do
      kitten_id = 'abcd1234'
      @client.requester.should_receive(:get) do |url|
        url.should eq("/kitten/#{kitten_id}/info")
      end
      @client.kitten.by_id(kitten_id).info
    end


    it "should hit the puppy get_all endpoint" do
      @client.requester.should_receive(:get) do |url|
        url.should eq('/puppiez-endpoint/get_all')
      end
      @client.puppy.get_all
    end

    it "should hit the puppy scratch_belly endpoint" do
      puppy_id = 'abcd1234'
      @client.requester.should_receive(:post) do |url, params|
        url.should eq("/puppiez-endpoint/scratch")
        params.should eq({
          :puppy_id => puppy_id,
          :location => 'belly',
        })
      end
      @client.puppy.scratch_belly(puppy_id)
    end


    it "should hit the guppy get_all endpoint" do
      @client.requester.should_receive(:get) do |url|
        url.should eq('/fish/guppy/get_all')
      end
      @client.fish.guppy.get_all
    end

  end
end
