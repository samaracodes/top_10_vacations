class Top10Vacations::CLI

    def call
        puts "
        🅦 🅔 🅛 🅒 🅞 🅜 🅔  🅣 🅞  🅣 🅗 🅔   🅣 🅞 🅟   ➊ ⓿   🅥 🅐 🅒 🅐 🅣 🅘 🅞 🅝 🅢   🅐 🅟 🅟  ❗
        ---------------------------------------------------------------------
        "
        get_season
        list_seasons
        get_chosen_season
        #list_vacations_for(chosen_season)
        # choose_vacations
    end

    def get_season 
        Top10Vacations::Season.new("Winter")
        Top10Vacations::Season.new("Spring")
        Top10Vacations::Season.new("Summer")
        Top10Vacations::Season.new("Fall")
        
        @seasons = Top10Vacations::Season.all
    end

    def list_seasons
        puts "
        What season are you interested in traveling?
        "
        @seasons.each.with_index do |season, index|
           puts "#{index + 1}. #{season.name}"
        end
    end

    def get_chosen_season
        chosen_season = gets.strip.to_i
        list_vacations_for(chosen_season) if valid_input?(chosen_season.to_i, @seasons)
    end

    def valid_input?(input, data)
        input.to_i <= @seasons.length && input.to_i > 0
    end

    def list_vacations_for(chosen_season)
        #list vacations for season/scrape the data
        season = @seasons[chosen_season - 1].name
        puts "
        Here are the Top 10 best vacation spots for #{season}. 
        Select a location to see what the destination offers!
        "

        Top10Vacations::Location.all.each.with_index(1) do |location, index|
           puts "#{index}. #{location.name}"
        end

        show_location_details
    end

    def show_location_details
    end



end