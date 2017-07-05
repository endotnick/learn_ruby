class Book
# write your code here
attr_accessor :title

LittleWords = ['and', 'by', 'the', 'or', 'of', 'in', 'a', 'an']

def title()
    titleWords = @title.split(" ")
    spaces = titleWords.length - 1
    output = ""
    
    titleWords.each_with_index do |word, index|
        if (LittleWords.include? word) && (index != 0)
            output += word
        else 
            output += word.capitalize   
        end
        
        if spaces > 0
            output += " "
            spaces -= 1
        end
    end
    output
end



end
