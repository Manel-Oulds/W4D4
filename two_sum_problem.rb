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
    array.each do |x|
        c = target-x
        return true if hash.has_key?(c)
        hash[x] = c
    end
    return false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false