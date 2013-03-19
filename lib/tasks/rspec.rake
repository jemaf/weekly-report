desc "Run localized specs"
task "spec:i18n" => :environment do
  I18n.available_locales.each do |locale|
    ENV["LOCALE"] = locale.to_s
    Rake::Task["spec"].reenable
    Rake::Task["spec"].invoke
  end
end