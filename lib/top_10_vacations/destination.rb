class Top10Vacations::Destination
    attr_accessor :name, :season
    attr_reader :info

    @@all = []
    
    def initialize(name)
        @name = name
        @season = season
        @info = info
        @@all << self
    end

    def self.all
        Top10Vacations::Scraper.scrape_destinations if @@all.empty?
        @@all
    end

    def self.get_info
        Top10Vacations::Scraper.scrape_info if @@all.empty?
        @info
    end

end