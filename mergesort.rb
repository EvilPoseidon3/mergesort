

def fibs(number)
  fibinacie_array = Array.new
  first_number = 0
  second_number = 1
  while fibinacie_array.length < number
    fibinacie_array[0] = first_number
    fibinacie_array[1] = second_number
    new_number = fibinacie_array[-1] + fibinacie_array[-2]
    fibinacie_array.push(new_number)
  end
  return fibinacie_array
end

def fibs_rec(number,array = [0,1])
  if array.length == number
    return array
  else
    new_number = array[-1] + array[-2]
    fibs_rec(number, array.push(new_number))
  end
end

puts fibs_rec(8)