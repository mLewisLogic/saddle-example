require 'lasso-example'


describe LassoExample do
  context "Testing endpoint access via methods" do
    before :each do
      @client = LassoExample.new
    end

    it "should find the Kitten endpoint" do
      @client.kitten.class.name.should == 'Kitten'
    end

    it "should find the Puppy endpoint" do
      @client.puppy.class.name.should == 'Puppy'
    end

    it "should find the Kitten endpoint" do
      @client.fish.guppy.class.name.should == 'Guppy'
    end
  end
end
