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
      flash[:error] = t("flash.reports.create.error")
      render :index
    end
  end

  def self.weekly_report_email
    ReportMailer.weekly_report
  end

  def self.weekly_report_remainder_email
    ReportMailer.weekly_report_remainder
  end

  def self.weekly_report_last_remainder_email
    ReportMailer.weekly_report_last_remainder
  end
end
