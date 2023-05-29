require_relative "MyStack"

class MinMaxStack
    def initialize
        @store = MyStack.new
    end
    #We use a hash to keep track of min max
    def peek
        @store.peek[:value] unless empty?
    end
    def size
        @store.size
    end
    def empty?
        @store.empty?
    end
    def max
        @store.peek[:max] unless empty?
    end
    def min
        @store.peek[:min] unless empty?
    end
    def pop
        @store.pop[:value] unless empty?
    end
    def push(val)
        @store.push({
          max: new_max(val),
          min: new_min(val),
          value: val
        })
      end
    
      private
    
      def new_max(val)
        empty? ? val : [max, val].max
      end
    
      def new_min(val)
        empty? ? val : [min, val].min
      end


end