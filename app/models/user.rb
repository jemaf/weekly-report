class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates_presence_of :email, :name

  has_many :reports

  def weekly_report
    last_week_date = (DateTime.current().to_date() - 7.days)
    last_report = self.reports.last
    last_report if last_report != nil && last_report.created_at >= last_week_date
  end

  def weekly_report_sent?
    if self.weekly_report != nil
      return true
    else
      return false
    end
  end
end
