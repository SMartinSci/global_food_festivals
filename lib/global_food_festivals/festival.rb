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

  def self.scrape_fodors
    doc = Nokogiri::HTML(open("https://www.fodors.com/news/photos/12-global-food-festivals-worth-the-trip"))
    links = doc.search(".container.slides").map do |festival|
    name = festival.css("h2").text.gsub("Book a Hotel", " ").delete!("\n").strip
    location = festival.css("h3 span").text.delete!("\n").strip
    description = festival.css("p").map(&:text).reject{ |c| c.empty? }.join("','")
    Festival.new(name, location, description)
    end
  end
end
