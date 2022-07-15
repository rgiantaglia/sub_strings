dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (sentence, dictionary)
    no_space_sentence = sentence.gsub(/\s+/, "").downcase

    result = dictionary.map {|word| no_space_sentence.scan(word).length}
    
    zipped = dictionary.zip(result)
    
    hash = Hash[zipped].select {|k, v| v > 0}
end

puts substrings("Howdy partner, sit down! How's it going?",dictionary)
