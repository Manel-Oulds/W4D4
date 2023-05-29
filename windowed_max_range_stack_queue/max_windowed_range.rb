require_relative "min_max_stack_queue"

def max_windowed_range(array, window_size)
    queue = MinMaxStackQueue.new
    best_range = nil 
    array.each_with_index do |ele,i|
        queue.enqueue(ele)
        queue.dequeue if queue.size > window_size
        if queue.size == window_size
            best_range = queue.max - queue.min if !best_range || queue.max - queue.min > best_range
        end
    end
    best_range
end

if __FILE__ == $PROGRAM_NAME
    p max_windowed_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
    p max_windowed_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
    p max_windowed_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
    p max_windowed_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
  end