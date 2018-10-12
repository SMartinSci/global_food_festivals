#CLI Controller
class CLI

  def call
    list_festivals
    menu
    goodbye
  end

  def list_festivals
    puts "Global Food Festivals:"
    @all_festivals = Festival.scrape_fodors
    Festival.all.each.with_index(1) do |festival, i| #using 1 eliminates the need to subtract 1 from the index
    puts "#{i}. #{festival.name}\n\n"
    end
  end

   def menu
    puts "Enter the number of the Festival that you would like more information on or type exit to enter:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0 #If greater than 0 treat as integer, not a string
        the_festival = @all_festivals[input.to_i-1]
        puts "#{the_festival.name}\n\n"
        puts "#{the_festival.location}\n\n"
        puts "#{the_festival.description}"
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