# Bubble Sort algorithm Ruby implementation
def bubble_sort(list)
  sorted = false
  while !sorted do
    swapped = false
    index = 0
    for current_element in list do
      next_element_index = index + 1
      unless next_element_index < list.length
        break
      end
      next_element = list[next_element_index]
      if next_element < current_element
        list[index] = next_element
        list[next_element_index] = current_element
        swapped = true
      end
      index += 1
    end
    sorted = !swapped
  end
  list
end

p bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78]
