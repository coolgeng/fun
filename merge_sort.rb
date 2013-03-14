# Merge sort naive implementation
# It's always better to use Ruby's .sort call, implemented in C (quicksort)

list = [38,27,43,3,9,82,10]

def mergesort(container)
  return container if container.size <= 1
  mid   = container.size / 2
  left  = container[0...mid]
  right = container[mid...container.size]
  merge(mergesort(left), mergesort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? or right.empty?
    left.first <= right.first ? sorted << left.shift : sorted << right.shift
  end
  sorted + left + right
end

