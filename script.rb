require "pry-byebug"


def substrings(word, array_of_str)
    down_case_word = word.downcase
    array_of_str.inject({}) do |result, str|
      count = down_case_word.scan(str).size
      result[str] = count unless count == 0
      result
    end
  end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Below", dictionary)
 # => { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
 # => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }