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

def fizzbuzz
  a = []
  range = 1..100
  for i in range
    if i%3 == 0
      a[i-1] = 'Fizz'
    elsif i%5 == 0
      a[i-1] = 'Buzz'
    elsif i%5 == 0 and i%3 == 0
      a[i-1] = 'FizzBuzz'
    else
      a[i-1] = i
    end
  end
  return a
end