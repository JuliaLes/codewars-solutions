# Parts of a list
# https://www.codewars.com/kata/56f3a1e899b386da78000732

# SUMMARY
# Write a function partlist that gives all the ways to divide 
# a list (an array) of at least two elements in two non-empty parts.

# Each two non empty parts will be in a pair.
# Each part will be in a string.
# Elements of a pair must be in the same order as in the original array.

# EX:

# a = ["az", "toto", "picaro", "zone", "kiwi"] -->

# [["az", "toto picaro zone kiwi"], ["az toto", "picaro zone kiwi"], ["az toto picaro", "zone kiwi"], ["az toto picaro zone", "kiwi"]]

def partlist(arr)
    result = []
    arr[0..-2].each_with_index do |item, index|
        result << [arr[0..index].join(" "), arr[(index + 1)..-1].join(" ")]
    end
    result
end