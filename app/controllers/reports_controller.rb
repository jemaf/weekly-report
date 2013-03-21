class ReportsController < ApplicationController
  def index
    @report = Report.new
  end

  def create
    @report = Report.new(params[:report])

    if @report.save
      redirect_to reports_path,
        :notice => t("flash.reports.create.notice")
    else
      flash[:error] = t("flash.reports.create.error")
      redirect_to reports_path
    end
  end
end
