#CLI Controller

class GlobalFoodFestivals::CLI

  def call
    puts "Global Food Festivals:"
    list_festivals
  end

  def list_festivals
    puts <<- DOC.gsub /^\s*/, ''
    1.Tasting Australia – South Australia
    2.Venice Food & Wine Festival – 	Venice, Italy
    3.Vegas Uncork’d – Las Vegas, 	Nevada
    4.… etc.
    # get festivals
    DOC
  end
  
    def menu
    puts "Enter the number of the Festival that you would like more information on:"
  end
end
