class ReportsController < ApplicationController
  def index
    @report = Report.new
  end

  def create
    @report = Report.new(params[:report])

    if @report.save
      flash[:notice] = t("flash.reports.create.notice")
      redirect_to new_report_path
    else
      flash.now[:error] = t("flash.reports.create.error")
      render :index
    end
  end

  def self.weekly_report
    ReportMailer.weekly_report.deliver
  end

  def self.weekly_report_remainder
    ReportMailer.weekly_report_remainder.deliver
  end

  def self.weekly_report_last_remainder
    users = User.all
    emails = Array.new

    users.each do |user|
      if user.weekly_report == nil
        ReportMailer.weekly_report_last_remainder(user).deliver
      end
    end
  end
end
