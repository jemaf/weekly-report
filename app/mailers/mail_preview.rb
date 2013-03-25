class MailPreview < MailView
  def weekly_report
    ReportMailer.weekly_report
  end

  def weekly_report_remainder
    ReportMailer.weekly_report_remainder
  end
end