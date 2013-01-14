namespace :utils do
  desc 'Populate Keywords'
  task :generate_breeds => :environment do
    puts 'Populating Breeds'
    Utils::HtmlParser.generate_breeds
  end
end