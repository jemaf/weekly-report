class ReportMailer < ActionMailer::Base
  default from: "aserg_ufmg@googlegroups.com"

  def weekly_report
    @last_week_date = (DateTime.current().to_date() - 7.days).to_s
    @current_date = DateTime.current().to_date().to_s

    @reports = Report.where(:created_at => @last_week_date.to_date .. 
      (@current_date.to_date + 1.days))

    @report_title = t("report_mailer.weekly_report.subject", 
        :week => @last_week_date + " - " + @current_date)

    mail to: "aserg_ufmg@googlegroups.com", :subject => @report_title
  end

  def weekly_report_remainder
    mail to: "aserg_ufmg@googlegroups.com", 
    :subject => t("report_mailer.weekly_report_remainder.subject")
  end
end
