class Vacation
    attr_accessor :info, :month 

    @@all = []
    
    def initialize(month, info)
        @month = month
        @info = info
        @@all << self
    end


    def self.all
        @@all
    end

    def self.get_months
        Top10Vacations::Scraper.scrapes.to_s
    
    end


    # def self.get_info_by_month(month)
    #     if get_months.include? month
    #         Top10Vacations::Scraper.scrapes.each do |i|
    #             puts "#{i.text}"
    #         end
    #     end
    # end

    def self.get_info_by_month(input) 
        if get_months.include? input
          @@all.select do |i|
            i.month.include? input.each do |m|
                m.print_info
            end
        end
    end 
end


    def print_info
        puts ""
        puts "Vacation Details: #{month} || #{info}"
    end

end