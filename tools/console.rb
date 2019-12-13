require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#cults instances
jw = Cult.new("Jehovah's Witnesses", "Pennsylvania", 1999, "We come to your door.")
soulcycle = Cult.new("Soul Cycle", "NYC", 2010, "Cycle or Die!")
cov = Cult.new("Children of the Vault", "NYC", 2010, "Good luck vault hunter")

#follower instances 
peter = Follower.new("Peter", 33, "I'm in a cult!")
jack = Follower.new("Jack", 25, "I'm a sucker!")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits