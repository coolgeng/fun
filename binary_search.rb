# Standard binary search in ruby

def bsearch(array, goal, low, high)
  return nil if low > high 
  mid = low+((high-low)/2).to_i

  if goal < array[mid]
    bsearch(array, goal, low, mid-1)
  elsif goal > array[mid]
    bsearch(array, goal, mid+1, high)
  else
    mid
  end
end

def binary_search(array, goal)
  return bsearch(array, goal, 0, array.length)
end
