nums = [5,7,4,3,2,5,4]

def bubble_sort(array)
  i = 0
  while i < array.length - 1
    if array[i] > array[i + 1]
      array[i], array[i + 1] = array[i + 1], array[i]
      i = 0
    else
      i += 1
    end
  end
  array
end

p bubble_sort(nums)