
#This file is used for scraping our outside data
require 'open-uri'
class Top10Vacations::Scraper

    def self.scrapes

        url="https://www.rd.com/list/best-places-to-travel-every-month-of-the-year/"

        page = Nokogiri::HTML(open(url))
    
        vacations = page.css('h2')
        vacations.shift

        vacations.each do |d|
            location = d.text.split(": ").slice(1,2)
            month = d.text.split(": ").slice(0)
            info = d.text.split(": ").slice(1,2)
            Top10Vacations::Vacation.new(location, month, info)
        end
    end

end

