require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


p1 = Passenger.new("P1")
p2 = Passenger.new("P2")
p3 = Passenger.new("P3")

d1 = Driver.new("D1")
d2 = Driver.new("D2")

r1 = Ride.new(p1, d1, 100.67)
r2 = Ride.new(p1, d2, 100.99)
r3 = Ride.new(p2, d2, 50.07)
r4 = Ride.new(p3, d2, 200.36)



Pry.start
