def bad_two_sum?(arr,target)
    arr.each_with_index do |ele,i|
        (i+1...arr.length).each do |j|
            return true if ele + arr[j] == target
        end
    end
    return false
end

def okay_two_sum?(arrays, target)
    arrays.sort!
    arrays.each_with_index do |ele,i|
        c = target-ele
        return true if my_bsearch(arrays[i+1..-1],c)
    end
    return false
end

def my_bsearch(array,target)
    return nil if array.length == 0
    mid = array.length/2

    case array[mid] <=> target
    when 0
      return mid
    when 1
      return my_bsearch(array.take(mid),target)
    else
      search_res = my_bsearch(array.drop(mid+1),target)
      search_res.nil? ? nil : mid + 1 + search_res
    end
end
  




def two_sum?(array,target)
   hash = {}
   array.each do |ele|
    complement = target - ele
    return true if hash[complement]
    hash[ele] = true
   end
   return false
end

def two_sum_indices(array,target)
    hash = {}
    array.each_with_index do |ele,i|
        complement= target - ele
        return [i,hash[complement]] if hash[complement]
        hash[ele] = i
    end
    return nil
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

p two_sum_indices(arr, 6) 
p two_sum_indices(arr, 10)