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
       Vacation.all_months.each_with_index {|m,i| puts "#{i+1}. #{m}"}
        
        puts ""
        puts "View the Best Vacations by Month, enter the number of a month"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "**If you need to exit, enter exit anytime".colorize(:light_cyan)
        puts ""
       
        
        
        input = ''
        input = gets.strip
        strings = "abcdefghijklmnopqrstuvwxyz"
        str = strings.split("")
        check_for_string = str.any? { |s| invalid_entry if s.include? input}


        if input != "exit"
            check_for_string
        
            index = Integer(input)
            if index > 0 || index < 12
                Vacation.search_months(index)
                puts ""
                puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
                puts "If you'd like to see another month, enter Menu.".colorize(:magenta)
                puts "Otherwise, enter 'exit' to leave the app.".colorize(:magenta)
                puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
                second_input = gets.strip
                if second_input == "menu"
                    printf "\033c"
                    menu
                elsif second_input == "exit" 
                    exit_app
                else 
                    invalid_entry
                end
            else
                invalid_entry
            end
        else 
            exit_app
        end
    end

    def exit_app
        printf "\033c"
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Hopefully you've got some good insight on traveling from us!".colorize(:yellow)
        puts ""
        puts "Happy Travels!".colorize(:yellow)
        puts ""
        puts ":)".colorize(:yellow)
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    end

    def invalid_entry
        printf "\033c"
        puts ""
        puts "!!!!!!!!!!!!!!!!!!!!!!!".colorize(:red)
        puts "Invalid Entry!".colorize(:red)
        puts "Try Again maybe :(".colorize(:red)
        puts "Otherwise, enter 'exit' to leave the app.".colorize(:red)
        puts "!!!!!!!!!!!!!!!!!!!!!!!".colorize(:red)
        puts ""
        sleep 2
        menu
    end
end