module BubbleSort
    def BubbleSort.sort(values)
        sorted = true
        while sorted
            sorted = false
            values.each_with_index { |value, index|
                if index > 0
                    if values[index - 1] > values[index]
                        values[index], values[index - 1] = values[index - 1], values[index]
                        sorted = true
                    end
                end
            }
        end
        values
    end
end