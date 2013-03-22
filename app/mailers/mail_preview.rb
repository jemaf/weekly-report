class MailPreview < MailView
  def weekly_report
    ReportMailer.weekly_report
  end
end