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
        Vacation.get_months


        puts ""
        puts "View the Best Vacations by Month, enter a month"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "**If you need to exit, enter exit anytime".colorize(:light_cyan)
        puts ""
        
        
        input = ''

        input = gets.strip.downcase

        if input == "exit"
            exit
        elsif input != Vacation.get_months.to_s
            invalid_entry
            menu
        elsif input.include? Vacation.get_months.to_s
            #Vacation.get_info_by_month(input)
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
        puts "!!!!!!!!!!!!!!!!!!!!!!!".colorize(:red)
        puts ""
        sleep 2
        menu
    end
end