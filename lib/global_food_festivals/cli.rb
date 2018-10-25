#CLI Controller
require 'colorize'

class CLI

  def call
    greeting
    Scraper.scrape_fodors
    list_festivals
    menu
    goodbye
  end

  def greeting
    puts "Welcome to 12 Global Food Festivals worth the trip!\n".colorize(:color => :black, :background => :light_white)
  end

  def list_festivals
    Festival.all.each.with_index(1) do |festival, i| #using 1 eliminates the need to subtract 1 from the index
    puts "#{i}. #{festival.name}\n"
    end

    puts ""
    puts "Which food festivals would you like to see more information on?".colorize(:color => :black, :background => :light_white)
    puts "Enter the corresponding number, listed above, of each food festival to get a brief description and location.\n".colorize(:color => :black, :background => :light_white)
  end

  def menu
    input = nil
    while input != "exit".downcase
      input = gets.strip.downcase

      if input.to_i.between?(1, 12) #If greater than 0 treat as integer, not a string
        the_festival = Festival.all[input.to_i-1]
        puts "#{the_festival.name}\n\n"
        puts "#{the_festival.location}\n\n"
        puts "#{the_festival.description}\n\n"
        puts "---------------------------------------------------------------------------------------------------------------------------------------"
        puts "Enter the number of the festival that you would like more information on, type 'list' to view all 12 festivals, or type 'exit' to exit the program."
        list_festivals
      elsif input == "list"
        list_festivals
      elsif input == "exit".downcase
      else
        puts "That value does not correspond to a global food festival, please type 'list' to view the list of 12 global festivals again or 'exit'"
      end
    end
  end

  def goodbye
    puts "Global food festivals await you!"
  end
end
