# Distance from the average
# https://www.codewars.com/kata/568ff914fc7a40a18500005c

# SUMMARY

# Given a starting list/array of data, it could make some statistical sense to know 
# how much each value differs from the average. If for example during a week of work 
# you have collected 55,95,62,36,48 contacts for your business, it might be interesting 
# to know the total (296), the average (59.2), but also how much you moved away from the 
# average each single day.

# The resulting list/array of differences starting from [55, 95, 62, 36, 48] is thus 
# [4.2, -35.8, -2.8, 23.2, 11.2].

def distances_from_average(arr)
  avg = arr.inject(:+).to_f / arr.count
  
  arr.map { |num| num = (avg - num).round(2) }
end