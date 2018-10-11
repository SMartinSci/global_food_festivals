class GlobalFoodFestivals::Festival
  attr_accessor :name, :url, :location, :description
  def self.complete
    self.scrape_complete
  end


  def self.scrape_festivals
    #Go to fodors, find the festival, extract the properties, instantiate a festival
    festivals = []

festivals << self.scrape_fodors
    festival_1 = self.new
    festivals
  end

  def self.scrape_fodors
    doc = Nokogiri::HTML(open("https://www.fodors.com"))
  end
end
