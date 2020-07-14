class Building
    attr_reader :units, :renters
    def initialize(units= [], renters= [])
        @units = units
        @renters =  renters
    end

    def add_unit(unit)
        @units << unit
    end

    def renters
        @units.map do |unit|
            unless unit.renter.name == nil
                name = unit.renter.name
            end
        end
    end

    def average_rent
        total_rent = []
        @units.map do |unit|
           total_rent << unit.apt_info[:monthly_rent].to_f
        end
        total_rent.sum / total_rent.count.round(1)
    end
end

# building.units[0].renter.name