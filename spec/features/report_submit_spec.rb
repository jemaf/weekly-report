require "spec_helper"

describe "report" do
  context "submit successful" do
    before do
      @report = FactoryGirl.build(:report)

      visit root_path

      select @report.user.name, :from => t("activerecord.attributes.report.user")
      fill_in t("activerecord.attributes.report.current_activities"), with: @report.current_activities
      fill_in t("activerecord.attributes.report.next_activities"), with: @report.next_activities

      click_button t("helpers.submit.report.create")
    end

    it "displays successful message" do
      message = t("flash.reports.create.notice")
      expect(page).to have_content(message)
    end
  end

  context "submit unsuccessful" do
    before do
      @report = FactoryGirl.build(:report)
      @report.current_activities = nil

      visit root_path

      select @report.user.name, :from => t("activerecord.attributes.report.user")
      fill_in t("activerecord.attributes.report.current_activities"), with: @report.current_activities
      fill_in t("activerecord.attributes.report.next_activities"), with: @report.next_activities

      click_button t("helpers.submit.report.create")
    end

    it "displays error messages" do
      message = t("flash.reports.create.error")
      expect(page).to have_content(message)
    end
  end
end