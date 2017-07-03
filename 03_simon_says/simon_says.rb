#write your code here
def echo(string)
    string
end

def shout(string)
   string.upcase
end

def repeat(string, count = 2)
    phrase = string
    (count - 1).times do
        phrase += " #{string}"
    end
    phrase
end

def start_of_word(string, count)
   i = 0
   word_start = ""
   while i < count do
       word_start += string[i]
       i += 1
   end
   word_start
end

def first_word(string)
    string.split(" ")[0] 
end

def titleize(string)
    title = ""
    words = string.split(" ")
    spaces = words.length - 1
    little_words = ["and", "of", "the", "to", "by", "a", "over"]
    
    words.each_with_index do |word, index| 
        if (little_words.include? word) && (index != 0)
            title += word
        else
            title += word.capitalize 
        end
        title += " " unless (spaces == 0)
        spaces -= 1
    end
    title
end