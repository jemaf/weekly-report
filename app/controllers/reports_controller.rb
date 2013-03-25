class ReportsController < ApplicationController
  def index
    @report = Report.new
  end

  def create
    @report = Report.new(params[:report])

    if @report.save
      flash[:notice] = t("flash.reports.create.notice")
      redirect_to reports_path
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
end
