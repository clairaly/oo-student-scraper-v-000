require 'open-uri'
require 'pry'
require 'Nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    html = open("./fixtures/student-site/index.html")
    @parse_page ||= Nokogiri::HTML(doc)
    students = {}

    :name, :location, :profile_url
  end

  def self.scrape_profile_page(profile_url)

  end

end
