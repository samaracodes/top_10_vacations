require 'open-uri'
class Top10Vacations::Scraper

    def self.scrapes

        url="https://rd.com/list/best-places-to-travel-every-month-of-the-year/"

        page = Nokogiri::HTML(open(url))

        result = page.css('h2','div p')
        result.shift
        result.pop
        result.pop
        result.pop
        #Used to remove some unwanted Html lines 

        result.each do |r| 
            (1..1).each do
                month = "#{r.text.split(": ").shift}"
                info = "#{r.text.split(": ")}"
                Top10Vacations::http://Vacation.new(month, info)
            end
        end

    end
end

COPY OF SCRAPER INFO



require 'open-uri'
require 'nokogiri'



url="https://www.rd.com/list/best-places-to-travel-every-month-of-the-year/"

page = Nokogiri::HTML(open(url))
    

month = page.css('h2').map {|m| m.text.split(": ")[0]}.compact
month.shift



info = page.css('p,dir').map {|m| m.text.split(" : ")}.flatten.compact
info.shift
info.pop
info.pop
info.pop


q
#  (1..1).each do
# (0..month.size).each do |index| 
#   puts "index: #{index + 1}"
#   puts "#{month[index]}"
#   puts "#{info[index]}"
# end
# end
(0..info.size).each do |index|
  puts ""
  puts "#{month[index]}"
  puts "#{info[index]}"
end