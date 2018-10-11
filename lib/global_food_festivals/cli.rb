#CLI Controller

class GlobalFoodFestivals::CLI

  def call
    list_festivals
    menu
    goodbye
  end

  def list_festivals
    puts "Global Food Festivals:"
    # get festivals
    @festivals = GlobalFoodFestivals::Festival.complete
    @festivals.each.with_index(1) do |festival, i| #using 1 eliminates the need to subtract 1 from the index
      puts "#{i}. #{festival.name} - #{festival.location}"
    end
  end

   def menu
    puts "Enter the number of the Festival that you would like more information on or type exit to enter:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0 #If greater than 0 treat as integer, not a string
        the_festival = @festivals[input.to_i-1]
        puts "#{the_festival.name} - #{the_festival.location}"
      elsif input == "list"
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
