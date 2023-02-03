def stock_picker(arr)
  profit = Array.new(arr.length - 1) {Array.new(arr.length - 1, 0)}
  max_profit = 0
  for i in 0...(arr.length - 1) do
    profit[i].pop(i)
    arr_copy = arr.dup
    arr_copy.shift(i+1)
    for j in 0...(arr_copy.length) do
      profit[i][j] = arr[i+j+1] - arr[i]
      if profit[i][j] > max_profit
        max_profit = profit[i][j]
        buy = i
        sell = i + j + 1
      end
    end
  end
  [buy, sell].inspect
end