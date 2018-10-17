class Festival
  attr_reader :name, :location, :description
  @@all = []
    #Go to fodors, find the festival, extract the properties, instantiate a festival

  def self.all
    @@all
  end

  def initialize(name, location, description)
    @name = name
    @location = location
    @description = description
    @@all << self
  end
end
