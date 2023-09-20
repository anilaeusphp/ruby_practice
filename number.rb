x = 3
y = -5

puts x.class # Integer
puts y.class # Integer
puts x.class.class # Class

puts x.size  # 8  so it takes 8 bit size on memory

puts "Anıl".size  # 4 character.

# so as you see if we use size for the integers it will give the size of memory however on the string it will give how many chars.


puts 4.fdiv(1.8) # 2.222222
puts 4.fdiv(1.8).round(3) # 2.222
puts 4.fdiv(1.8).round(2) # 2.22





### RANDOM NUMBERS


puts rand # 0.3917070378297304
puts rand # 0.6455028505808663
puts rand # 0.46444698043784705
puts rand(5) # 1          between 0 and 5 an integer    0 and 5 is not included
puts rand(5) # 2          between 0 and 5 an integer    0 and 5 is not included
puts rand(5) # 4          between 0 and 5 an integer    0 and 5 is not included







10.downto(3) do |x|
  puts x   # 10 9 8 7 6 5 4 3
end


1.upto(13) do |x|
  puts x # 1,2,3,4,5,6,7,8,9,10,11,12,13
end



1.step 10 do |x|
  puts x   # 1,2,3,4,5,6,7,8,9,10
end


2.step 10, 4 do |x|
  puts x # 2, 6, 10
end




5.times do |i|
  next if i==3
  puts i   # 0,1,2,4
end



def genel_topla(*numbersss)

  total = 0
  numbersss.each do |num|
    total += num
  end

  puts total
end


genel_topla(1,2,321,4,12412,5125) # 17865
