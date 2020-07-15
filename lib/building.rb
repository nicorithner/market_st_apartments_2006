class Building
    attr_reader :units, :rented_units
    def initialize(units= [], renters= [], rented_units= [])
        @units = units
        @rented_units = rented_units
    end

    def add_unit(unit)
        @units << unit
    end

    def renters
        
        renters_names = @units.map do |unit|
                unit.renter.name if unit.renter
        end
        renters_names.compact
    
    end

    def average_rent
        # total_rent = []
        # @units.map do |unit|
        #    total_rent << unit.monthly_rent.to_f
        # end
        # total_rent.sum / total_rent.count.round(1)
        total = @units.sum do |unit|
            unit.monthly_rent
        end
        (total.to_f / @units.count).round(1)
    end

    def rented_units
        @units.find_all do |unit|
            unit.renter
        end
    end

    def renter_with_highest_rent
        # binding.pry
        highest_paying_renter = []
        highest_paying_renter << rented_units.max do |a, b|
            a.monthly_rent <=> b.monthly_rent
        end
        
        highest_paying_renter[0].renter
    end

    def units_by_number_of_bedrooms
       output = {}
     number_bedrooms = @units.map do |unit|
        unit.bedrooms 
        end.uniq.reverse

      unit_number = @units.map do |unit|
            unit.number 
        end
        p unit_number
        p number_bedrooms
        # output
    end


end

# building.units[0].renter.name