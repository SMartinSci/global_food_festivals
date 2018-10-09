#CLI Controller

class GlobalFoodFestivals::CLI
  
  def call
    list_festivals
    menu
    goodbye
  end

  def list_festivals
    puts <<- DOC.gsub /^\s*/, ''
    1.Tasting Australia – South Australia
    2.Venice Food & Wine Festival – 	Venice, Italy
    3.Vegas Uncork’d – Las Vegas, 	Nevada
    4.… etc.
    # get festivals
    DOC
    @festivals = GlobalFoodFestivals::Festivals.all
  end
  
   def menu
    puts "Enter the number of the Festival that you would like more information on or type exit to enter:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
    case input 
    when "1"
      puts "More info on festival 1..."
    when "2"
      puts "More info on festival 2"
    when "list"
      list_festivals
     else
      puts "Type list or exit"
      end
    end
  end
  
    def goodbye
    puts "Global food festivals await you!"
  end
end
