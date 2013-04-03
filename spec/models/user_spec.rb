require 'spec_helper'

describe User do
  
  context "validations" do
    it "requires name" do
      user = User.new(:name => nil)
      expect(user).to have(1).error_on(:name)
    end

    it "requires email" do
      user = User.new(:email => nil)
      expect(user).to have(1).error_on(:email)
    end

    it { should have_many(:reports) }
  end
end
