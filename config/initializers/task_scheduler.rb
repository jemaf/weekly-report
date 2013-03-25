require 'rubygems'
require 'rufus/scheduler'  
scheduler = Rufus::Scheduler.start_new

#every monday at midnight
scheduler.cron '0 0 * * 1' do
  puts("Emailing weekly report at #{Time.now}")
  ReportsController.weekly_report_email.deliver
end

#every friday at 6 am
scheduler.cron '0 6 * * 5' do
  puts("Emailing weekly report remainder at #{Time.now}")
  ReportsController.weekly_report_remainder_email.deliver
end

scheduler.every "5s" do
  puts("Emailing weekly report remainder at #{Time.now}")
  mail = ReportsController.weekly_report_remainder_email
end