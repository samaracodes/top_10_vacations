class Top10Vacations::Destination
    attr_accessor :name
    @@all = []

    def initialize(name, season = nil, info = nil)
        @name = name
        if season != nil
            self.season = season
        end

        if info != nil
            self.info = info
        end
        save
    end

    def self.all
        Top10Vacations::Scraper.scrape_destinations if @@all.empty?
        @@all
    end

    def save
        @@all << self
    end

    def season
        @season
    end

    def season=(season)
        @season = seasons
        season.add_destination(self)
    end
    
    def info
        @info
    end

    def info=(info)
        @info = info
        info.destination << self unless info.destination.include? self
    end
end