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
end

# building.units[0].renter.name