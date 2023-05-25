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
    sub_arrays=[]
    list.each_with_index do |ele,i|
        (i...list.length).each do |j|
            sub_arrays << list[i..j]
        end
    end
    max = sub_arrays.first.sum
    sub_arrays.each do |ele|
        max = ele.sum if ele.sum >= max
    end
    max
end

#Phase2:
def largest_contiguous_subsum_2(arr)
    largest_sum = arr[0]
    current_sum = arr[0]
    
    (1...arr.length).each do |i|
        current_sum+= arr[i] if current_sum + arr[i] > current_sum
        largest_sum = current_sum if current_sum > largest_sum
    end
    
    return largest_sum
end


list = [2,0,-2,3,4,7,0]

p largest_contiguous_subsum(list)





