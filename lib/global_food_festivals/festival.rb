class Festival
  #attr_accessor :name, :location, :description
  @@all = []

  #def self.scrape_festivals
    #Go to fodors, find the festival, extract the properties, instantiate a festival
  #  @@all << self.scrape_fodors
  #end

  def self.all
    @@all
  end

  def initialize(name, location, description)
    @name = name
    @location = location
    @description = description
    @@all << self
  end

  def self.scrape_fodors
    doc = Nokogiri::HTML(open("https://www.fodors.com/news/photos/12-global-food-festivals-worth-the-trip"))
    links = doc.search(".container.slides").map do |festival|
    #food_festival = self.new
    name = festival.css("h2").text.gsub("Book a Hotel", " ").delete!("\n").strip
    location = festival.css("h3 span").text.delete!("\n").strip
    description = festival.css("p").map(&:text).reject{ |c| c.empty? }
    Festival.new(name, location, description)
    end
  end
end
