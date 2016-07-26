# Rectangle into Squares
# https://www.codewars.com/kata/rectangle-into-squares/ruby

# SUMMARY
# A true rectangle can cut into scquares.
# Given two dimesions, return an array 
# with the size of each of the squares.

def sqInRectInner(length, width)
    max = [length, width].max
    min = [length, width].min
    if min * max == 0
        return []
    else
        return [min] + sqInRectInner(max - min, min)
    end
end

def sqInRect(length, width)
    if length == width
        return nil
    else
        sqInRectInner(length, width)
    end
end