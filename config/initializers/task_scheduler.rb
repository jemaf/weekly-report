require 'rubygems'
require 'rufus/scheduler'  
scheduler = Rufus::Scheduler.start_new

#every monday at midday
scheduler.cron '0 8 * * 1' do
  puts("Emailing weekly report at #{Time.now}")
  ReportsController.weekly_report
end

#every friday at 6 am
scheduler.cron '0 3 * * 5' do
  puts("Emailing weekly report remainder at #{Time.now}")
  ReportsController.weekly_report_remainder
end

#every monday at 6am
scheduler.cron '0 3 * * 1' do
  puts("Emailing last weekly report remainder at #{Time.now}")
  ReportsController.weekly_report_last_remainder
end