class Apartment
    attr_reader :apt_info
    def initialize(apt_info, renter= nil)
        @apt_info = apt_info
        @number = @apt_info[:number]
        @monthly_rent = @apt_info[:monthly_rent]
        @bathrooms = @apt_info[:bathrooms]
        @bedrooms = @apt_info[:bedrooms]
        @renter = renter
    end

    def number
        @number
    end

    def monthly_rent
        @monthly_rent
    end

    def bathrooms
        @bathrooms
    end

    def bedrooms
        @bedrooms
    end

    def renter
        @renter
    end

    def add_renter(renter)
        @renter = renter
    end
end