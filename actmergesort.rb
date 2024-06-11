def mergesort(array)
  if array.length == 1
    return array
  else
  return merge(mergesort(array.slice!(0...array.length/2)),mergesort(array))
  end
end

def merge(left,right)
  result = []
  until left.length == 0 || right.length == 0 do
  result << (left.first >= right.first ? right.shift : left.shift)
  end
  result + left + right
end

def randomarray(number)
  randomarray = []
  while randomarray.length <= number
    randomarray.push(rand(400000))
  end
  randomarray
end

array = randomarray(400000)

print mergesort(array)