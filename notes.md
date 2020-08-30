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