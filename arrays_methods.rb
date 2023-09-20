numbers_array = [2,3,4,5,6]
numbers_array.collect! {|x| x*2}
puts numbers_array.inspect # [4, 6, 8, 10, 12]
# collect is the same thing called "map" in javascript

puts numbers_array.combination(2).to_a.inspect # [[4, 6], [4, 8], [4, 10], [4, 12], [6, 8], [6, 10], [6, 12], [8, 10], [8, 12], [10, 12]]
puts numbers_array.combination(3).to_a.inspect # [[4, 6, 8], [4, 6, 10], [4, 6, 12], [4, 8, 10], [4, 8, 12], [4, 10, 12], [6, 8, 10], [6, 8, 12], [6, 10, 12], [8, 10, 12]]



# compact -> this will remove nils

array1 = [3,5,nil,7,nil,8]
puts array1.compact.inspect # [3, 5, 7, 8]


array1.concat([1,2,3])
puts array1.inspect # [3, 5, nil, 7, nil, 8, 1, 2, 3]

puts array1.count # 9
puts array1.count(3) # 2 kaç tane 3 var


array2 = [1,2,2,3,4,5,6,7,2,2]
array2.delete(2)
puts array2.inspect # [1, 3, 4, 5, 6, 7] this will remove all the 2 element in index

array2.delete_at(0)
puts array2.inspect # [3, 4, 5, 6, 7]


array3 = [30,40,50,60,70,80]

array3.delete_if  {|x| x<50}
puts array3.inspect # [50, 60, 70, 80]

array3.drop(2) # will drop first two element and then assign rest to itself
puts array3.inspect
