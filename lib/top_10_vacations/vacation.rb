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

    def self.find_info(info) 
        if @@all.include? info
          @@all.select {|l| l.tag_list.include? tag}.each{|l| l.print_info}
      end 
    end
     

    def self.all_months
        Vacation.all
        @@all.map.with_index {|m, i| puts "#{i+1}. #{m.month}"}.uniq 
    end


    def self.search_months(index)
        if index >= 1 && index 
            puts "#{@month[index]}" 
            puts "#{@info[index]}"
        end
    end

end