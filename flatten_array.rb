def flatten(array, result=[])
  array.each do |element|
    if element.kind_of?(Array)
      flatten(element, result)
      p result
    else
      result << element
    end
  end
  result
end

p flatten([1,[2,3,[4,5],6]])