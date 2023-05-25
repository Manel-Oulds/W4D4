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
def largest_contiguous_subsum_2(list)
    largest_sum = ele.first.sum
    list.each do |ele|
        current_sum = ele.first.sum
        largest_sum

    end


end

list = [5, 3, -7]

p largest_contiguous_subsum(list)





