require_relative "min_max_stack"

class MinMaxStack
    def initialize
        @in_stack = MinMaxStack.new
        @out_stack = MinMaxStack.new
    end

    def size
        @in_stack.size + @out_stack.size
    end
    def empty?
        @stack.empty? && @out_stack.empty
    end
    def max
        [@in_stack.max,@out_stack.max].max
    end
    def min
        [@in_stack.max,@out_stack.max].min
    end

    def dequeue
        queueify if @out_stack.empty?
        @out_stack.pop
    end
    def enqueue(ele)
        @store.push(val)
    end
    private
    def queueify
      @out_stack.push(@in_stack.pop) until @in_stack.empty?
    end


end