def windowed_max_range(array, w)
    n = array.length
    return nil if n < w || w <= 0
  
    current_max_range = nil
  
    (0..n-w).each do |i|
      window = array[i...i+w]
      min_value = window.min
      max_value = window.max
      range = max_value - min_value
  
      if current_max_range.nil? || range > current_max_range
        current_max_range = range
      end
    end
  
    current_max_range
  end
  

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8