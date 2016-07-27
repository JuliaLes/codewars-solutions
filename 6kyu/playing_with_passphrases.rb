# Playing with passphrases
# https://www.codewars.com/kata/559536379512a64472000053

# SUMMARY

# choose a text in capital letters including or not digits and non alphabetic characters,
# shift each letter by a given number but the transformed letter must be a letter (circular shift),
# replace each digit by its complement to 9,
# keep such as non alphabetic and non digit characters,
# downcase each letter in odd position, upcase each letter in even position (the first character is in position 0),
# reverse the whole result.


def play_pass(str, n)
    alphabet = ("A".."Z").to_a
    shifted_alphabet = alphabet.rotate(n)
    ary = str.chars
    
    ary.each_with_index do |item, index|
        if item == item.to_i.to_s
            ary[index] = (9 - item.to_i).to_s
        elsif alphabet.include?(item)
            ind = alphabet.index(item)
            ary[index] = shifted_alphabet[ind]
        end
    end
    ary.map!.with_index { |item, index| index.odd? ? ary[index].downcase : ary[index].upcase }
    
    ary.join('').reverse
end
