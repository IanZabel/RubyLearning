# key-value

class Keyvalue

  def useroutput(inputstring, hashmap)
    
    input = inputstring.chomp.split{" "}
    i = 1
    dict = hashmap

    if input[0].downcase == "put"
      dict.store(input[1], input[2])
      output = 'ok'

    elsif input[0].downcase == 'fetch'
      if dict.key?(input[1]) == true
        output = dict[input[1]].to_s

      else
        output = 'value not found'

      end

    elsif input[0].downcase == 'exit'
      output = 'Bye!'
      i = 0

    else
      output = 'Unknown command. Known commands are: put, fetch, exit'

    end

    return output, i, dict

  end

  def mainloop(input = $stdin, output = $stdout)
    
    i = 1
    dict = {}

    while i == 1
      
      output.print '> '
      userinput = input.gets
      useroutput = useroutput(userinput, dict)
      output.puts useroutput[0]
      i = useroutput[1]
      dict = useroutput[2]

    end
  end

end
