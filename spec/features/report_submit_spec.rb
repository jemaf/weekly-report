require "spec_helper"

describe "report" do
  context "submit successful" do
    before do
      @report = reports(:successful)

      visit root_path

      fill_in t("form.report.name"), with: @report.name
      fill_in t("form.current_activities"), with: @report.current_activities
      fill_in t("form.next_activities"), with: @report.next_activities

      click_button t("form.buttons.submit")
    end

    it "displays successful message" do
      message = t("submit.sucessful")
      expect(page).to have_content(message)
    end
  end

  context "submit unsucessful" do
    before do
      @report = reports(:unsuccessful)

      visit root_path

      fill_in t("form.report.name"), with: @report.name
      fill_in t("form.current_activities"), with: @report.current_activities
      fill_in t("form.next_activities"), with: @report.next_activities

      click_button t("form.buttons.submit")
    end

    it "displays error messages" do
      message = t("submit.unsucessful")
      expect(page).to have_content(message)
    end
  end
end