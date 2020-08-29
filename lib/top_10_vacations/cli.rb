class Top10Vacations::CLI
    

    def call
        puts "---------------------------------------------------------------------"
        puts "🅦 🅔 🅛 🅒 🅞 🅜 🅔  🅣 🅞  🅣 🅗 🅔   🅥 🅐 🅒 🅐 🅣 🅘 🅞 🅝 🅢   🅐 🅟 🅟  ❗"
        puts "--------------------------------------------------------------------- "
        puts "--------------------------------------------------------------------- "
        puts ""
        
        @month = Top10Vacations::Vacation.get_month.text.split(": ").slice(0)
        menu
    end

    def menu
        puts ""
        puts "View the Best Vacations by Month, enter a month"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "**If you need to exit, enter exit anytime"
        puts ""
    

        input = gets.strip.downcase
        if input.include? @month.downcase
            vacation_info
            menu
        elsif input == "exit"
            exit
        else
            invalid_entry
        end
    end
            
    def months_list
        puts ""
        puts ""
        puts "Select Vacation Locations by Name: Enter now"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "**If you need to exit, enter exit anytime"
        vacation_info
    end

    def vacation_info
        @info = Top10Vacations::Vacation.get_info.text.split(": ").slice(1,2)

        @info.each.with_index(1) do |info, i|
            puts "#{info}"
        end
    end

    def exit
        puts "Hopefully you've got some good inspo! Happy Travels!"
    end

    def invalid_entry
        puts "!!!!!!!!!!!!!!!!!!!!!!!"
        puts "Invalid Entry!"
        puts "!!!!!!!!!!!!!!!!!!!!!!!"
        menu
    end
end