#Go to fodors, find the festival, extract the properties, instantiate a festival

class Scraper
  def self.scrape_fodors
    doc = Nokogiri::HTML(open("https://www.fodors.com/news/photos/12-global-food-festivals-worth-the-trip"))
    doc.search(".container.slides").map do |festival|
      name = festival.css(".jsGallerySub h2").text.delete!("\n").strip
      location = festival.css("h3 span").text.delete!("\n").strip
      description = festival.css("p").map(&:text).reject(&:empty?).join("\n\n")
      Festival.new(name, location, description)
    end
  end
end
