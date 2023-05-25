#Phase1: O(n^2)
def my_min(array)
    array.each_with_index do |ele,i|
        return ele if (array[0...i]+array[i+1..-1]).all?{|x| x > ele}
    end
end

#Phase2: O(n)
def my_min2(array)
    min = 0
    array.each do |x|
        min = x if x < min
    end
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list) 
# p my_min2(list)


#Phase1: O(n^2)
def largest_contiguous_subsum(list)
    sub_arrays = []
    list.each_with_index do |ele, i|
      (i...list.length).each do |j|
        sub_arrays << list[i..j]
      end
    end
  
    max_sum = sub_arrays.empty? ? 0 : sub_arrays.first.sum
  
    sub_arrays.each do |sub_array|
      max_sum = sub_array.sum if sub_array.sum >= max_sum
    end
  
    max_sum
  end
  

#Phase2:
def largest_contiguous_subsum_2(arr)
  
  current_sum = arr[0]
  largest_sum = arr[0]
  
  (1...arr.length).each do |i|
      current_sum = [arr[i], current_sum + arr[i]].max
      largest_sum = [largest_sum, current_sum].max
  end
  
  return largest_sum
end


list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 





