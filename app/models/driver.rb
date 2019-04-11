class Driver
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def total_mileage
        total_mileage_driven = 0
        self.rides.each do |ride|
            total_mileage_driven += ride.distance
        end
        total_mileage_driven
    end

    def self.mileage_cap(distance)
        self.all.select do |driver|
            driver.total_mileage_driven > distance
        end
    end


end
