require "pry-byebug"

dictionary = ["below","be","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (word, array)
  
  word_count = array.flat_map { |w| word.downcase.scan(w) }.tally
  puts word_count
end

substrings("Howdy partner, sit down! How's it going?", dictionary)