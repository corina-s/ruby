# Extend the Array class to include a method named my_each that takes a block, 
# calls the block on every element of the array, and returns the original array. 
# Do not use Enumerable's each method.

class Array
    def my_each(&prc)
        i=0 
        while i < self.length
            prc.call(self[i])
            i+=1 
        end
        self
    end

    def my_select(&prc)
        selected = []
        self.my_each do |el|
            if (prc.call(el))
                selected << el
            end
        end
        selected
    end

    def my_reject(&prc)
        arr = []
        self.my_each do |el|
            if !prc.call(el)
                arr << el
            end
        end
        arr
    end

    def my_any?(&prc)
        self.my_each do |el|
            return true if prc.call(el)
        end
        false
    end

    def my_all?(&prc)
        self.my_each do |el|
            return false if !prc.call(el)
        end
        true
    end

    def my_flatten
        flattened = []
        self.my_each do |el|
            el.is_a?(Array)? flattened += el.my_flatten : flattened << el
        end
        flattened
    end
end

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
p [ 1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]
