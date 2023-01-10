def substrings(word, array_of_str)
    array_of_str.inject({}) do |result, str|
      count = word.downcase.scan(str).size
      result[str] = count unless count == 0
      result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)