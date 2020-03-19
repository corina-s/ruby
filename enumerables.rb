# Extend the Array class to include a method named my_each that takes a block, 
# calls the block on every element of the array, and returns the original array. 
# Do not use Enumerable's each method.

class Array
    def my_each(&prc)
        for(i=0; i < self.length; i++){
            prc.call(self[i])
        }
        return self
    end

    def my_select(&prc)
        selected = []
        for(i=0; i < self.length; i++){
            if (prc.call(self[i])){
                selected << self[i]
            }
        }
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
end
