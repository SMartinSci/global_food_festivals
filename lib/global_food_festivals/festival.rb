class GlobalFoodFestivals::Festival
  attr_accessor :name, :url, :location, :description
  def self.complete
    # Return a bunch of instances of festivals
    puts <<- DOC.gsub /^\s*/, ''
    1.Tasting Australia – South Australia
    2.Venice Food & Wine Festival – 	Venice, Italy
    3.Vegas Uncork’d – Las Vegas, 	Nevada
    4.… etc.
      #get festivals
    DOC
    festival_1 = Festival.new
    festival_1.name = "Tasting Australia"
    festival_1.url = "https://www.fodors.com/world/australia-and-the-pacific/australia/south-australia"
    festival_1.location = "South Australia" 
    festival_1.description = "Home to some of Australia’s most prominent wine-growing regions, wide swaths of the Outback and such biodiverse destinations 
    as Kangaroo Island and the Limestone Coast, it would feasibly take months (or even years) to explore the reaches of South Australia‘s gastronomy and 
    viticulture—not to mention its many scenic regions. Thankfully, Tasting Australia condenses many of the state’s food and wine highlights into a robust 
    10-day program of more than 140 events—farm tours, wine, beer, and spirits tastings and masterclasses, leisurely chef-driven lunches and dinners included. 
    Festival highlights include the Glasshouse Kitchen in the capital city of Adelaide, where lauded Australian chefs and international culinary stars team up 
    for some memorable meals, and Tasting Australia Airlines, which transports visitors to some of the state’s more remote culinary destinations on all-inclusive 
    full-day tours."

    [festival_1, festival_2, etc.]
  end
end
  
