namespace :test do
  desc "Sends text"
  task send_text: :environment do
    @picker = Picker.first
    @picker.send_text(@picker.pick)
  end
end
