class Cult
    @@all = [] 
    attr_reader :name, :location, :founding_year, :slogan 
    def initialize(name, location, founding_year, slogan='')
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @followers = []
        @@all << self  
    end
    def recruit_follower(follower)
        BloodOath.new(self, follower)
        @followers << follower  
    end
    def cult_population
        @followers.length
    end
    def self.all
        @@all
    end
    def self.find_by_name(cult_name)
        @@all.find do |cult|
            cult.name == cult_name
        end
    end
 
    def self.find_by_location(cult_location)
        @@all.select do |cult|
            cult.location == cult_location
        end
    end
    def self.find_by_founding_year(year)
        @@all.select do |cult|
            cult.founding_year == year
        end
    end



end
