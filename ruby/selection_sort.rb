# Sort an array from smallest to largest

def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0

  arr.each_with_index do |value, index|
    if value < smallest
      smallest = value
      smallest_index = index
    end
  end
  smallest_index
end

def selection_sort(arr)
  new_arr = []
  arr.length.times do
    smallest_index = find_smallest(arr)
    new_arr << arr.slice!(smallest_index)
  end
  new_arr
end

puts selection_sort([3, 4, 2, 5])
