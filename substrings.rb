dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input,dictionary)
    
end

substrings("below", dictionary)
#should ouput { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# should ouptut { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, 
#     "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }