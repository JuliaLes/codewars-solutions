# Sum of the first nth term of series
# https://www.codewars.com/kata/555eded1ad94b00403000071

# SUMMARY

# Your task is to write a function which returns the sum of following series upto nth term(parameter).

# Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...

# You need to round the answer upto 2 decimal places and return it as String.
# If the given value is 0 then it should return 0.00
# You will only be given Natural Numbers as arguments.
# Ex:  SeriesSum(5) => 1 + 1/4 + 1/7 + 1/10 + 1/13 = "1.57"

def series_sum(n)
    sum = 0
    count = 1
    n.times do
        sum += 1/count.to_f
        count += 3
    end
    return '%.2f' % sum
end
