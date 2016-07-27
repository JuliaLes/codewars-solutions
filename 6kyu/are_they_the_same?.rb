# Are they the "same"?
# https://www.codewars.com/kata/are-they-the-same/ruby

# SUMMARY
# Given two arrays a and b write a function comp(a, b)
# that checks whether the two arrays have the "same" elements, 
# with the same multiplicities. "Same" means, here, that the 
# elements in b are the elements in a squared, regardless of 
# the order.

def comp(a, b)
  if a == nil || b == nil
    false
  else
    a.map { |num| num**2 }.sort == b.sort
  end
end
