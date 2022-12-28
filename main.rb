def substrings(string, dictionary)
    count_hash = Hash.new(0)
    dictionary.each do |word|
        count_word = string.scan(/\b#{word}\b/i).length 
        count_hash[word.to_sym] = count_word if count_word > 0
    end
    count_hash
end