# Return a reversed copy of the array
def reverse(an_array)
  an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
def histogram(a_string)
  counts = a_string.delete(' ').each_char.inject(Hash.new(0)) {|a,c| a[c] += 1; a}
  Hash[counts.sort_by {|_,v| -v}]
end

# Sum all the numbers in the array
def sum_only_numbers(an_array)
  sum = 0
  an_array.each { |x| sum += x if x.class == Fixnum or x.class == Float}
  return sum
end