class BloodOath
    @@all = []
    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @@all << self
        @initiation_date = Time.now 
        
    end

    def self.all 
        @@all 
    end

end