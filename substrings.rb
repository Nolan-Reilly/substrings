dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    substring_hash = {}

    string = string.downcase # Remove case sensitivity when checking substrings

    # Loop through word in the provided string
    string.split(" ").each { |word|
        # Loop through each word in the dicitionary seeing it exists within
        # the provided string, and add it the hash if it exists
        dictionary.each { |possible_substring|
            if word.include?(possible_substring)
                if substring_hash.key?(possible_substring)
                    substring_hash[possible_substring] += 1
                else
                    substring_hash[possible_substring] = 1
                end
            end
        }
    }

    puts substring_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)