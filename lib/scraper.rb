require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    index_doc = Nokogiri::HTML(open(index_url))
    students = []
    index_doc.css("div.student-card").each do |student|
      info = {
        :name => student.css(".student-name").text,
        :location => student.css(".student-location").text,
        :profile_url => student.css("a")[0]["href"]
      }
      students << info
    end
  students
  end

  def self.scrape_profile_page(profile_url)

  end

end
