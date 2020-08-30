
#This file is used for scraping our outside data
require 'nokogiri'
require 'open-uri'
class Top10Vacations::Scraper
    

    def self.scrapes

        url="https://www.rd.com/list/best-places-to-travel-every-month-of-the-year/"

        page = Nokogiri::HTML(open(url))

      

        ma = page.css('h2').map {|m| m.text.split(": ")[0]}.compact
        inf = page.css('p,dir').map {|m| m.text.split(" : ")}.flatten.compact
        ma.shift
        inf.shift
        inf.pop
        inf.pop
        inf.pop



 
    
        (0..11).each do |index|
            month = "#{ma[index]}"
            info = "#{inf[index]}"
            Vacation.new(month, info)
        end
        
       
    end
   
end

