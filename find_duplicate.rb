# Imagine we have an immutable array of size N which we know to be filled 
# with integers ranging from 0 to N-2, inclusive. 
# Suppose we know that the array contains exactly one duplicated entry and 
# that duplicate appears exactly twice. Find the duplicated entry. 
# (For bonus points, ensure your solution has constant space and time prop to N)
 
def find_duplicate(array)
  hash = {}
  
  array.each do |element|
    if !hash[element].nil?
      return element
    else
      hash[element] = 1
    end
  end
end                                   

file = File.read(ARGV[0])

file.lines.each do |line|
  puts find_duplicate(line.split(';')[1].chomp.split(','))
end



