#CLI Controller
require 'colorize'
class CLI

  def call
    puts "Welcome to 12 Global Food Festivals worth the trip.\n\n"
    Scraper.scrape_fodors
    list_festivals
    menu
    goodbye
  end

  def list_festivals
    Festival.all[0..11].each.with_index(1) do |festival, i| #using 1 eliminates the need to subtract 1 from the index
    puts "#{i}. #{festival.name}\n\n"
    end

    puts "Which food festivals would you like to see more information on?\n\n"
    puts "Enter the cooresponding number, listed above, of each food festival to get a brief description and location.\n\n"
end

   def menu
    input = nil
    while input != "exit".downcase
      input = gets.strip.downcase

      if input.to_i.between?(1, 12) #If greater than 0 treat as integer, not a string
        #@all_festivals = Scraper.scrape_fodors  # I added this line back in so the program would run.
        the_festival = Festival.all[input.to_i-1]
        puts "#{the_festival.name}\n\n"
        puts "#{the_festival.location}\n\n"
        puts "#{the_festival.description}\n\n"
        puts "Enter the number of the festival that you would like more information, type list to view all 12 festivals, or type 'exit' to exit the program"
        list_festivals
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
