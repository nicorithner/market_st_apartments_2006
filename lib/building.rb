class Building
    attr_reader :units, :renters, :rented_units
    def initialize(units= [], renters= [], rented_units= [])
        @units = units
        @renters =  renters
        @rented_units = rented_units
    end

    def add_unit(unit)
        @units << unit
    end

    def renters
        # @units.map do |unit|
        #     unless unit.renter.name == nil
        #         name = unit.renter.name
        #     end
        # end
       rented = @units.find_all do |unit|
            unit.renter
        end
        # binding.pry
        rented.map do |unit|
            unit.renter.name
        end
    end

    def average_rent
        total_rent = []
        @units.map do |unit|
           total_rent << unit.monthly_rent.to_f
        end
        total_rent.sum / total_rent.count.round(1)
    end

    def rented_units
        @units.find_all do |unit|
            unit.renter
        end
    end

end

# building.units[0].renter.name