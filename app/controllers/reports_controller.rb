class ReportsController < ApplicationController
  def index
    @report = Report.new
  end

  def create
    @report = Report.new
  end
end
