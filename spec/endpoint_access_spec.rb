require 'saddle-example'


describe SaddleExample do
  context "Testing endpoint access via methods" do

    before :each do
      @client = SaddleExample::Client.create
    end


    it "should find the root endpoint" do
      @client.class.should == SaddleExample::RootEndpoint
    end

    it "should find the Kitten endpoint" do
      @client.kitten.class.should == SaddleExample::Endpoints::Kitten
    end

    it "should find the Puppy endpoint" do
      @client.puppy.class.should == SaddleExample::Endpoints::Puppy
    end

    it "should find the Kitten endpoint" do
      @client.fish.guppy.class.should == SaddleExample::Endpoints::Fish::Guppy
    end

  end
end
