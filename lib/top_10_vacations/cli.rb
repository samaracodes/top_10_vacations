class Top10Vacations::CLI

    def call
        puts "
        "
        puts "🅦 🅔 🅛 🅒 🅞 🅜 🅔  🅣 🅞  🅣 🅗 🅔   🅣 🅞 🅟   ➊ ⓿   🅥 🅐 🅒 🅐 🅣 🅘 🅞 🅝 🅢   🅐 🅟 🅟  ❗"
        puts "---------------------------------------------------------------------"
        puts ""
        get_season
        list_seasons
        get_chosen_season
        # get_vacations_for(season)
        # list_vacations
        # choose_vacations
    end

    def get_season 
        @seasons = ['Winter', 'Spring', 'Summer', 'Fall']
    end

    def list_seasons
        puts "What season are you interested in traveling?"
        @seasons.each.with_index do |season, index|
           puts "#{index + 1}. #{season}"
        end
    end

    def get_chosen_season
        chosen_season = gets.strip
        binding.pry
        #if valid_input(chosen_season.to_i, @seasons)
        #end
    end

    def valid_input(input, data)
        input.to_i <= @seasons.length && input.to_i > 0
    end

    def get_vacations_for
        #list vacation details/scrape the data
    end


end