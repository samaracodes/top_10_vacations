
#This file is used for scraping our outside data
require 'nokogiri'
require 'open-uri'
class Top10Vacations::Scraper
    

    def self.scrapes

        url="https://www.rd.com/list/best-places-to-travel-every-month-of-the-year/"

        page = Nokogiri::HTML(open(url))

        
        #result = page.css('h2','div p')
        # result.shift
        # result.pop
        # result.pop
        # result.pop
        #Used to remove some unwanted Html lines 

        month = page.css('h2').map {|m| m.text}.compact
        info = page.css('div p').map {|m| m.text}.compact
        month.shift
 
        (1..1).each do 
            (0..month.size).each do |index|  
                if month == month 
                    puts "#{month[index]}"
                elsif info == info
                    puts "Infomation: #{info[index]}"
                end
            end
            Vacation.new(month, info)
        end
    end
   
end

