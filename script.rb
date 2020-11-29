def sorted?(array)
  sorted = true
  array.each_with_index do |num, idx| 
      return sorted if array[idx+1] == nil
      sorted = false if num > array[idx+1]
  end
  sorted
end 

def bubble_sort(array)
  return array if array.length == 1
  idx = 0
  loop do
      p array
      if array[idx+1] == nil 
          idx = 0
      elsif sorted?(array)
          return array
      elsif array[idx] > array[idx+1]
          temp = array[idx]; array[idx] = array[idx+1]; array[idx+1] = temp # swap
          idx += 1
      else
          idx += 1
      end     
  end 
end  

p bubble_sort([9,8,7,6,5,4,3,6,2,9,-5,6,-8,-40,5])