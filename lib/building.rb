class Building
    attr_reader :units, :renters
    def initialize(units= [], renters= [])
        @units = units
        @renters = renters
    end

    def add_unit(unit)
        @units << unit
    end
end