class Type
    @@all = []

    attr_accessor :name, :region

    def initialize(name,region)
        @name = name
        @@region = region
        @@all << self
    end

    def self.all
        @@all
    end

end
