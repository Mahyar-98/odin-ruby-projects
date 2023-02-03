def bubble_sort(arr)
  is_sorted = false
  while is_sorted == false
    is_sorted = true
    for i in 0...(arr.length - 1)
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
      end
      for i in 0...(arr.length - 1)
        if arr[i] > arr[i+1]
          is_sorted = false
        end
      end
    end
  end
  arr.inspect
end