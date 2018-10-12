

class GlobalFoodFestivals::Festival
  attr_accessor :name, :location, :description

  def self.complete
    self.scrape_festivals
  end

  def self.scrape_festivals
    #Go to fodors, find the festival, extract the properties, instantiate a festival
    festivals = []

    festivals << self.scrape_fodors
    festival_1 = self.new
    festivals
  end

  def self.scrape_fodors
    doc = Nokogiri::HTML(open("https://www.fodors.com/news/photos/12-global-food-festivals-worth-the-trip"))
    binding.pry

    links = doc.search(".container.slides").map do |festival|
    food_festival = self.new
    food_festival.name = festival.css("h2").text.gsub("Book a Hotel", " ").delete!("\n").strip
    food_festival.location = festival.css("h3 span").text.delete!("\n").strip
  end

end
end
#
#   location = doc.search
#   description = doc.search
#   festival
