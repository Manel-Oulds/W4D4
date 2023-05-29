class MyStack
    def initialize
        @store = []
    end

    def peek
        @store.last
    end

    def push(ele)
        @store.push(ele)
    end

    def pop
        @store.pop
    end
    def empty?
        @store.empty?
    end
    def size
        @store.size
    end


end