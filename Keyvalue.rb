# key-value

class Keyvalue
  
  def start(input=$stdin)
    
    @i = 1
    @dict = {}

    while @i == 1

      print '> '
      @input = input.gets.chomp.split{" "}

      # Determine output based on command (@input[0])
      if @input[0].downcase == "put"

        @dict.store(@input[1], @input[2])
        disp = "ok"

      elsif @input[0].downcase == "fetch"

        if @dict.key?(@input[1]) == true
          
          disp = @dict[@input[1]].to_s  # Convert hashmap value to string if not already
        
        else
          
          disp = "value not found"
        
        end
          
      elsif @input[0].downcase == "exit"
        
        disp = "Bye!"
        @i = 0  # Break the loop
          
      else

        # Error message if command (input[0]) not recognized
        disp = "Unknown command. Known commands are: put, fetch, exit"
      
      end

      puts disp

    end

    return disp

  end

end
