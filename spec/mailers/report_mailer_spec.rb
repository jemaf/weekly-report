require "spec_helper"

describe ReportMailer do
  describe "Send weekly report" do
    before do
      @mail = ReportMailer.weekly_report
    end

    it "successfully sent" do
      sent_mail = @mail.deliver
      expect(ActionMailer::Base.deliveries).to include(sent_mail)
    end
  end

  describe "Send weekly report remainder" do
    before do
      @mail = ReportMailer.weekly_report_remainder
    end

    it "successfully sent" do
      sent_mail = @mail.deliver
      expect(ActionMailer::Base.deliveries).to include(sent_mail)
    end
  end
end
