require 'spec_helper'

describe Report do
  context "validations" do
    it "requires name" do
      report = Report.create(:name => nil)
      expect(report).to have(1).error_on(:name)
    end

    it "requires week message" do
      report = Report.create(:current_activities => nil)
      expect(report).to have(1).error_on(:current_activities)
    end
  end
end
