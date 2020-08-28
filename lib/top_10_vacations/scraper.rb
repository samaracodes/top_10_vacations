
#This file is used for scraping our outside data
require 'open-uri'
class Top10Vacations::Scraper

    def self.scrape_destinations

        url="https://www.rd.com/list/best-places-to-travel-every-month-of-the-year/"

        page = Nokogiri::HTML(open(url))
    
        destinations = page.css('h2')
        destinations.shift

        destinations.each do |d|
            result = d.text.split(": ").drop(1).join
            Top10Vacations::Destination.new(name)
        end
    end


    def self.scrape_info
        url = "https://www.rd.com/list/best-places-to-travel-every-month-of-the-year/" 

        page = Nokogiri::HTML(open(url))

        destination_info = page.css('div.card-content, p ltr')
    

        destination_info.each.with_index do |details|
            result = details.text.split(": ").drop(1).join
            Top10Vacations::Destination.new(result)
        end
    end
end

