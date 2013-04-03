require 'spec_helper'

describe Report do
  context "validations" do

    it "requires week message" do
      report = Report.create(:current_activities => nil)
      expect(report).to have(1).error_on(:current_activities)
    end

    it { should belong_to(:user) }

    it "requires user" do
      report = Report.create
      report.user = nil
      expect(report).to have(1).error_on(:user_id)
    end
  end
end
