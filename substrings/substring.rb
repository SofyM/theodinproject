def substrings(str, substr_array)
    hash = Hash.new(0)
    substr_array.join(" ").downcase.split(" ")
        .each { |sub| hash[sub] = str.downcase.scan(sub).size if str.downcase.include?(sub) }
    return hash
end

## TESTING
string = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings(string, dictionary)