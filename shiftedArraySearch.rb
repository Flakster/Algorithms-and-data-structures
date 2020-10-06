# [9, 12, 17, 2, 4, 5], 
# num = 2

def shifted_arr_search(shiftArr, num)
  # your code goes here
  if shiftArr.length == 1
    return 0
  end
  
  if shiftArr[0] < shiftArr[-1]
    return binary_search(shiftArr,0,shiftArr.length-1,num)
  end
  
  p = find_pivot(shiftArr)
  if num > shiftArr[0]
    result = binary_search(shiftArr, 0, p, num)
  else
    result = binary_search(shiftArr, p+1, shiftArr.length-1, num)
  end
  return result
end

def find_pivot(arr)
  l = 0
  r = arr.length-1
  m = (l + r) / 2
  while arr[m] < arr[m+1] do
    if arr[m] > arr[-1]
      l = m +1
    else
      r = m
    end
    m = (l + r) / 2
  end
  return m
end

def binary_search(arr, l, r, n)
  while l <= r do
    m = (l + r) / 2
    if arr[m] == n
      return m
    else
      if n > arr[m]
        l = m + 1
      else
        r = m - 1
      end
    end
  end
  return -1
end

p shifted_arr_search([1,2], 2)