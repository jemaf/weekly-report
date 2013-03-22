require "spec_helper"

describe ReportMailer do
  describe "Send report" do
    before do
      @mail = ReportMailer.weekly_report
    end

    it "successfully sent" do
      sent_mail = @mail.deliver
      expect(ActionMailer::Base.deliveries).to include(sent_mail)
    end
  end

end
