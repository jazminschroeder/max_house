require 'nokogiri'
require 'open-uri'

module Utils
  class HtmlParser
    def self.generate_breeds
      ActiveRecord::Base.connection.tables.each do |table|
        ActiveRecord::Base.connection.execute("TRUNCATE breeds")
      end
      page = Nokogiri::HTML(open('http://www.akc.org/breeds/complete_breed_list.cfm'))
      page.css("ul[class='common_ul']").children.each do |element|
        Breed.create!(name: element.text.strip) if element.text.strip.present?
        break if element.text == 'Yorkshire Terrier'
      end
    end
  end
end
