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


end