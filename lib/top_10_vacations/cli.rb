require 'colorize'
class Top10Vacations::CLI
    

    def call
        puts "--------------------------------------------------------------------- "
        puts "---------------------------------------------------------------------"
        puts "      🅦 🅔 🅛 🅒 🅞 🅜 🅔  🅣 🅞  🅣 🅗 🅔   🅥 🅐 🅒 🅐 🅣 🅘 🅞 🅝 🅢   🅐 🅟 🅟  ❗"
        puts "--------------------------------------------------------------------- "
        puts "--------------------------------------------------------------------- "
        puts ""
        menu
    end

    def menu
        Vacation.all_months
        
        puts ""
        puts "View the Best Vacations by Month, enter the number of a month"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "**If you need to exit, enter exit anytime".colorize(:light_cyan)
        puts ""
        
        
        input = ''
        input = gets.strip


        if input == "exit"
            exit
        elsif input != "exit" ||
            invalid_entry
            sleep 2
            menu 
        else
            input = gets.chomp.to_i 
            Vacation.search_months(input)
        end
    end

    def exit
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Hopefully you've got some good insight on traveling from us!".colorize(:yellow)
        puts "Happy Travels!".colorize(:yellow)
        puts ":)".colorize(:yellow)
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end

    def invalid_entry
        puts ""
        puts "!!!!!!!!!!!!!!!!!!!!!!!".colorize(:red)
        puts "Invalid Entry!".colorize(:red)
        puts "Try Again maybe :(".colorize(:red)
        puts "Otherwise, enter 'exit' to leave the app.".colorize(:red)
        puts "!!!!!!!!!!!!!!!!!!!!!!!".colorize(:red)
        puts ""
    end
end