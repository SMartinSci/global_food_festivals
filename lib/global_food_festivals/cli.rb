#CLI Controller
class CLI

  def call
    list_festivals
    menu
    goodbye
  end

  def list_festivals
    puts "Welcome to 12 Global Food Festivals worth the trip.\n"
    puts "Which food festivals would you like to see more information?"
    puts "Enter the cooresponding number, listed below, of each food festival to get a brief description and location."
    @all_festivals = Festival.scrape_fodors
    @all_festivals.each.with_index(1) do |festival, i| #using 1 eliminates the need to subtract 1 from the index
    puts "#{i}. #{festival.name}\n\n"
    end
  end

   def menu
    puts "Enter the number of the festival that you would like more information on or type 'exit' to exit the program"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i < 13 #If greater than 0 treat as integer, not a string
        the_festival = @all_festivals[input.to_i-1]
        puts "#{the_festival.name}\n\n"
        puts "#{the_festival.location}\n\n"
        puts "#{the_festival.description}\n\n"
      elsif input == "list"
        list_festivals
      else
        puts "That value does not coorespond to a global food festival, please type 'list' to view the list of 12 global festivals again or 'exit'"
      end
    end
  end

    def goodbye
    puts "Global food festivals await you!"
  end
end
