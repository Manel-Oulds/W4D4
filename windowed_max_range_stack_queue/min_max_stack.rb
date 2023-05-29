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
    def push(ele)
        @store.push({
            max: [ele,max].max
            min: [ele,min].min
            value: ele
        })
    end


end