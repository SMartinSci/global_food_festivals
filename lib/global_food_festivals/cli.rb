#CLI Controller

class GlobalFoodFestivals::CLI

  def call
    puts "Global Food Festivals:"
    list_festivals
  end

  def list_festivals
    puts <<- DOC
    1.Tasting Australia – South Australia
    2.Venice Food & Wine Festival – 	Venice, Italy
    3.Vegas Uncork’d – Las Vegas, 	Nevada
    4.… etc.
    # get festivals
    DOC
  end
end
