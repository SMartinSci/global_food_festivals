require 'pry'

class Festival
  attr_reader :name, :location, :description
  @@all = []

  def self.all
    @@all
    binding.pry
  end

  def initialize(name, location, description) #Each instance variable below, returns an instance of each attribute. e.g. @name = "Venice Food and Wine Festival"
    @name = name
    @location = location
    @description = description
    @@all << self  #self returns 1 instance of Festival/1 Festival ID, location, name, description; @@all returns all instances' ID's and attributes
  end
end
