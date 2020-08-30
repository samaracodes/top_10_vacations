class Vacation
    attr_accessor :month, :info 

    @@all = []
    
    def initialize(month, info)
        @month = month
        @info = info
        @@all << self
    end


    def self.all
        Top10Vacations::Scraper.scrapes if @@all.empty?
        @@all
    end

    # def self.find_info(info) 
    #     if @@all.include? info
    #       @@all.select {|l| l.tag_list.include? tag}.each{|l| l.print_info}
    #   end 
    # end
     

    def self.all_months
        Vacation.all.map {|m| m.month}.uniq 
    end

    def self.search_months(input)
        if input >= 1 && input<= Vacation.all_months.count
            month = Vacation.all_months[input-1]
            @@all.select {|m| m.print_info if m.month.include? month}
        else
            invalid_entry
            sleep 2
        end
    end

    def print_info
        puts "#{@month}" 
        puts "#{@info}"
    end

end