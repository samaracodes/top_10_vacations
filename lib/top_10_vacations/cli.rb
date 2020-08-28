class Top10Vacations::CLI
    

    def greeting
        puts "
        🅦 🅔 🅛 🅒 🅞 🅜 🅔  🅣 🅞  🅣 🅗 🅔   🅣 🅞 🅟   ➊ ⓿   🅥 🅐 🅒 🅐 🅣 🅘 🅞 🅝 🅢   🅐 🅟 🅟  ❗
        --------------------------------------------------------------------- "

        get_season
        print_seasons
        get_chosen_season
        get_chosen_dest
    end

    def get_season
        Top10Vacations::Season.new("Winter")
        Top10Vacations::Season.new("Spring")
        Top10Vacations::Season.new("Summer")
        Top10Vacations::Season.new("Fall")

        @seasons = Top10Vacations::Season.all
    end

    def print_seasons
        puts "What season are you interested in traveling? Select a number for a season."
        puts ""

        @seasons.each.with_index do |season, index|
           puts "#{index + 1}. #{season.name}"
        end
    end

    def get_chosen_season
        input = gets.strip.to_i
        print_dest_for(input) if valid_season_input?(input.to_i, @seasons)
    end
    def valid_season_input?(input, data)
        input.to_i <= @seasons.length && input.to_i > 0
    end


    def print_dest_for(input)
        #list destinations for the scrape the data
        @destinations = Top10Vacations::Destination.all
        season = @seasons[input - 1].name

        puts ""
        puts "Here are the Best Vacation destinations for #{season}. "
        puts "Select a number to view the location."
        puts ""

        @destinations.each.with_index do |d, index|
            puts "#{index + 1}. #{d.name.split(": ").drop(1).join}"
        end
    end


    def get_chosen_dest
        input = gets.strip.to_i
        print_info_for(input) if valid_destin_input?(input.to_i, @destinations)
    end
    def valid_destin_input?(input, data)
        input.to_i <= @destinations.length && input.to_i > 0
    end


    def print_info_for(input)
        @details = Top10Vacations::Scraper.scrape_info   

        @details.each.with_index(1) do |d, i|
            statement = "#{i}. #{d.text.split(": ").drop(1).join}"
            puts statement

        end
    end
end