require "spec_helper"

describe "User" do

  context "Registration successful" do
    before do
      @user = FactoryGirl.build(:user)

      visit new_user_path

      fill_in t("activerecord.attributes.user.name"), with: @user.name
      fill_in t("activerecord.attributes.user.email"), with: @user.email

      click_button t("helpers.submit.user.create")
    end


    it "displays successful message" do
      message = t("flash.users.create.notice")
      expect(page).to have_content(message)
    end

  end

  context "Registration unsuccessful" do
    before do
      visit new_user_path

      fill_in t("activerecord.attributes.user.name"), with: nil
      fill_in t("activerecord.attributes.user.email"), with: nil

      click_button t("helpers.submit.user.create")
    end
 
    it "blank email" do
      message = "#{t("activerecord.attributes.user.name")} " +
                  "#{t("errors.messages.blank")}"
      expect(page).to have_content(message)
    end

    it "blank name" do
      message = "#{t("activerecord.attributes.user.email")} " +
                  "#{t("errors.messages.blank")}"
      expect(page).to have_content(message)
    end
  end
end