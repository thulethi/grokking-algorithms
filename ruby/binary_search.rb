def binary_search(list, item)
  low = 0
  high = list.length - 1

  while low <= high
    mid = (low + high) / 2
    guess = list[mid]

    return mid if guess == item
    guess < item ? low = mid + 1 : high = mid - 1
  end
end

my_list = [1, 2, 3, 4, 5, 6, 7]
puts(binary_search(my_list, 3))
