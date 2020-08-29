class Top10Vacations::Vacation
    attr_reader :info, :location, :month 

    @@all = []
    
    def initialize(location, month, info)
        @location = location
        @month = month
        @info = info
        @@all << self
    end

    def self.all
        Top10Vacations::Scraper.scrapes if @@all.empty?
        @@all
    end

    def self.get_location
        location = Top10Vacations::Scraper.scrapes
        location.each do |l|
            puts "#{l.text.split(": ").slice(1,2)}"
        end
    end

    def self.get_info
        info = Top10Vacations::Scraper.scrapes
        info.each do |i|
            puts "#{i.text.split(": ").slice(1,2)}"
        end
    end

    def self.get_month
        month = Top10Vacations::Scraper.scrapes
        month.each do |d|
            puts "#{d.text.split(": ").slice(0)}"
        end
    end


end