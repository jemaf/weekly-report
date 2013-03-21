require "spec_helper"

describe "report" do
  context "submit successful" do
    before do
      @report = FactoryGirl.build(:report)

      visit root_path

      fill_in t("form.name"), with: @report.name
      fill_in t("form.current_activities"), with: @report.current_activities
      fill_in t("form.next_activities"), with: @report.next_activities

      click_button t("helpers.submit.report.create")
    end

    it "displays successful message" do
      message = t("flash.reports.create.notice")
      expect(page).to have_content(message)
    end
  end

  context "submit unsucessful" do
    before do
      @report = FactoryGirl.build(:report)
      @report.name = nil;
      @report.current_activities = nil

      visit root_path

      fill_in t("form.name"), with: @report.name
      fill_in t("form.current_activities"), with: @report.current_activities
      fill_in t("form.next_activities"), with: @report.next_activities

      click_button t("helpers.submit.report.create")
    end

    it "displays error messages" do
      message = t("flash.reports.create.error")
      expect(page).to have_content(message)
    end
  end
end