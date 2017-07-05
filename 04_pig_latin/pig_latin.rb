#write your code here
VOWELS = ['a','e','i','o','u']
$translatedWords = []

def translate(string)
    output = ""
    strings = string.split(" ")
    
    strings.each_with_index do |word|
        latinize(word)
    end
    
    spaces = $translatedWords.length - 1
    $translatedWords.each do |word|
        output += word
        
        if spaces > 0
            output += " "
            spaces -= 1
        end
    end
    
    $translatedWords = []
    output
    
end

def latinize(string)
    if (VOWELS.include? string[0])
        string += 'ay'
        $translatedWords << string
    else
        if (string[0..2] == 'sch')
            count = 3
        elsif (string[0..1] == 'qu')
            count = 2
        else
            count = 1
        end
        
        latinize(shift(string, count))
        
    end
end

def shift(input, count)
    last = input[0]
    newString = ""
    i = 1
 
    while i < input.length
        newString += input[i]
        i += 1
    end
    
    newString += last
    count -= 1
    
    if count > 0
        newString = shift(newString, count)
    end
    
    newString
end