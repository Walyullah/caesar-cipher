#write a method that accepts a string and a number
#turn the string into array
#transform each array item to char code
#shift the code by number arg
#make sure to loop a-z ?????
#turn shifted code into char
#join array items to string
#return shifted string

# #list of methods
# .upcase
# .downcase
# .gsub(' ', '') remove all the spaces in the string using gsub
# .chr
# .ord
#to_i
#to_a


def caesar_cipher (string, n)

    if n > 25
        x = n % 25
    elsif n < -25
        x = n % (-25)
    else
        x = n 
    end

    char_array = 
        string.split('')
    char_array.map! {|char| char.ord}
    shifted_array = []
    
    char_array.each do |code|
        if code >= 65 and code <= 90 || code >= 97 and code <= 122
            shifted_array.push(code + x) 
        else
            shifted_array.push(code)
        end
    end

    p "char array: #{char_array}"
    p "first #{shifted_array}"



    shifted_array.map! do |code|
        if n > 0
            if code > 90 && code < 97
                distance = code - 90
                code = 64 + distance
            elsif code > 122
                distance = code - 122
                code = 96 + distance
            else
                code
            end
        elsif n < 0
            if code < 65
                distance = 65 - code
                code = 91 - distance
            elsif code < 97 && code > 90
                distance = 97 - code
                code = 123 - distance
            else
                code
            end
        end
    end 


    #  char_array.map! {|code| code + n}
    
    
    p "second #{shifted_array}"

    p shifted_array.map {|code| code.chr}.join
    p x

    
end

caesar_cipher("AaZz", 7)