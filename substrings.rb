dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(input,dictionary)
    word_count = Hash.new{0}

    words = input.split(" ").to_a.each do |input_word|
        dictionary.each do |word|
            if input_word.include? word
                word_count[word] += 1  
            end
        end
    end
    puts word_count
end

substrings("below", dictionary)
#should ouput { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# should output { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, 
#     "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }