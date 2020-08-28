#Shows details on all the destinations amenities. 
class Top10Vacations::Info
    attr_accessor :info
    @@all = []

    def initialize(info)
        @info = info
        @destination = []
        save
    end

    def self.all
        Top10Vacations::Scraper.scrape_info if @@all.empty?
        @@all
    end

    def save
        @@all << self
    end

    def seasons
        seasons = @destination.collect do |destination|
            destination.seasons
        end
        seasons.uniq
    end
        
end
