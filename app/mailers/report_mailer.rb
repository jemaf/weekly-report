class ReportMailer < ActionMailer::Base
  default :from => APP_CONFIG['email']['sender']

  def weekly_report
    @last_week_date = (Time.now - 7.days).to_formatted_s(:ptbr)
    @current_date = Time.now.to_formatted_s(:ptbr)
    @users = User.all
    @users.sort! { |a,b| a.name.downcase <=> b.name.downcase }

    @report_title = t("report_mailer.weekly_report.subject", 
        :week => @last_week_date + " - " + @current_date)

    mail to: APP_CONFIG['email']['receiver'], :subject => @report_title
  end

  def weekly_report_remainder
    mail to: APP_CONFIG['email']['receiver'], 
    :subject => t("report_mailer.weekly_report_remainder.subject")
  end

  def weekly_report_last_remainder(user)
    mail to: user.email,
    :subject => t("report_mailer.weekly_report_last_remainder.subject") 
  end
end
