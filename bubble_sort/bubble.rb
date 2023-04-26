def bubble_sort(arr)
  sorted = true
  arr.each_with_index do |item, i|
    if arr[i + 1] && item > arr[i + 1]
      sorted = false
      hold = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = hold
    end
  end
  sorted ? arr.join(", ") : bubble_sort(arr)
end

puts bubble_sort([4,3,78,2,0,2])
