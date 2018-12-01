# key-value

class Keyvalue

  def useroutput(inputstring, hashmap)
    
    input = inputstring.chomp.split{" "}
    dict = hashmap

    if input[0].downcase == "put"
      dict.store(input[1], input[2])
      return 'ok', false, dict

    elsif input[0].downcase == 'fetch'
      if dict.key?(input[1]) == true
        return dict[input[1]].to_s, false, dict

      else
        return 'value not fount', false, dict

      end

    elsif input[0].downcase == 'exit'
      return 'Bye!', true, dict

    else
      return 'Unknown command. Known commands are: put, fetch, exit', false, dict

    end
  end

  def mainloop(input = $stdin, output = $stdout)
    
    @done = false
    @dict = {}

    while not @done
      
      output.print '> '
      userinput = input.gets
      useroutput = useroutput(userinput, @dict)
      output.puts useroutput[0]
      @done = useroutput[1]
      @dict = useroutput[2]

    end
  end

end
