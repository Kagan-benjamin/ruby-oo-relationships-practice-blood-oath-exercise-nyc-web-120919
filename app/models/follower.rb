class Follower
    @@all = []
    attr_reader :name, :age, :life_motto
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
        @cults = []
    end
    def join_cult(cult)
        BloodOath.new(cult, self)
        @cults << cult
        
    end
    def cults 
        @cults 
    end

    def self.all 
        @@all 
    end

    def self.of_a_certain_age(age)
        @@all.select do |follower|
            follower.age >= age 
        end
    end
end