def substrings(word, array)
    # convert word to lower case
    lower = word.downcase

    array.reduce(Hash.new(0)) do |hash, element|
        # scan for word on string parameter
        matches = lower.scan(element).length

        # assign number of scanned words in hash, as long as matches is not 0
        hash[element] = matches unless matches == 0     
        
        # return hash to #reduce method
        hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)