

class GlobalFoodFestivals::Festival
  attr_accessor :name, :url, :location, :description

  def self.complete
    self.scrape_festivals
  end

  def self.scrape_festivals
    #Go to fodors, find the festival, extract the properties, instantiate a festival
    festivals = []

    festivals << self.scrape_fodors
    festival_1 = self.new
    festivals
    binding.pry
  end

  def self.scrape_fodors
    doc = Nokogiri::HTML(open("https://www.fodors.com/news/photos/12-global-food-festivals-worth-the-trip"))
    festival = self.new
    # festival.name = doc.search("h2").text
    # festival.url = doc.search("href")
    # festival.location = doc.search
    # festival.description = doc.search
    festival
  end
end
