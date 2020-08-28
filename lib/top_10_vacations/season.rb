class Top10Vacations::Season
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @destinations = []
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def destinations
        @destinations
    end

    def add_destination(destination)
        destination.season = self unless destination.season == self
        @destinations << destination unless @destinations.include?(destination)
        
    end

    def info
        info = @destination.collect do |destination|
            destination.info
        end
    end


end