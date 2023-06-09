require_relative "min_max_stack"

class MinMaxStackQueue
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
        maxes = []
        maxes << @in_stack.max unless @in_stack.empty?
        maxes << @out_stack.max unless @out_stack.empty?
        maxes.max
    end
    def min
        mins = []
        mins << @in_stack.min unless @in_stack.empty?
        mins << @out_stack.min unless @out_stack.empty?
        mins.min
    end

    def dequeue
        queueify if @out_stack.empty?
        @out_stack.pop
    end
    def enqueue(ele)
        @in_stack.push(ele)
    end
    private
    def queueify
      @out_stack.push(@in_stack.pop) until @in_stack.empty?
    end


end