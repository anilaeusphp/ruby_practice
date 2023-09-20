arr1 = [1,2,3]
arr2 = Array.new(4,"a")
arr3 = %w{1 2 3}
arr4 = %w[1 2 3]

puts arr1.inspect # [1, 2, 3]
puts arr2.inspect # ["a", "a", "a", "a"]
puts arr3.inspect # [1, 2, 3]
puts arr4.inspect # [1, 2, 3]


# add new element to an array

arr1 << 4
puts arr1.inspect # [1, 2, 3, 4]

arr1.append 5
puts arr1.inspect # [1, 2, 3, 4, 5]

arr1.push 6
puts arr1.inspect # [1, 2, 3, 4, 5, 6]

arr1 += [7]
puts arr1.inspect # [1, 2, 3, 4, 5, 6, 7]

arr1.insert(-1,8)
puts arr1.inspect # [1, 2, 3, 4, 5, 6, 7, 8]


# Remove the last item from an array
arr1.pop
puts arr1.inspect # [1, 2, 3, 4, 5, 6, 7]

# Remove the first item of an array
arr1.shift
puts arr1.inspect # [2, 3, 4, 5, 6, 7]

# Remove specific item in array
arr1.delete(4)
puts arr1.inspect # [2,3,5,6,7]




array1 = [1,2,3,4,5,6,7]
new_array1 = array1.slice!(2,4)
puts new_array1.inspect # [3, 4, 5, 6]

array2 = array1+new_array1
puts array2.inspect  # [1, 2, 7, 3, 4, 5, 6]




cities1 = ["Vienna", "Venice", "Vertherburg", "Vundebrough"]
cities2 = ["Vienna", "Berlin", "Istanbul", "Amsterdam", "Goteburg"]

# Kesisim
kesisim = cities1 & cities2
puts kesisim.inspect # ["Vienna"]

# Birlesim
birlesim = cities1 | cities2
puts birlesim.inspect # ["Vienna", "Venice", "Vertherburg", "Vundebrough", "Berlin", "Istanbul", "Amsterdam", "Goteburg"]

# Fark
fark = cities1 - cities2
puts fark.inspect # ["Venice", "Vertherburg", "Vundebrough"]



puts cities2.sort.inspect   # ["Amsterdam", "Berlin", "Goteburg", "Istanbul", "Vienna"]
puts cities2.inspect  # ["Vienna", "Berlin", "Istanbul", "Amsterdam", "Goteburg"]


puts cities2.sort!.inspect # ["Amsterdam", "Berlin", "Goteburg", "Istanbul", "Vienna"]
puts cities2.inspect # ["Amsterdam", "Berlin", "Goteburg", "Istanbul", "Vienna"]
