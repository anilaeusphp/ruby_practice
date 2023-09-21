proc_example = proc { puts "working ..."}

proc_example.call  # working ...



puts [1,2,3,4,5,6,7,8].inject(&:+) # 36
puts [1,2,3,4,5,6,7,8].inject(&:*) # 40320







shopping = ["Apple", "PoMeGrante", "Pear", "Earl Gray"]

puts shopping.collect(&:downcase).inspect   # ["apple", "pomegrante", "pear", "earl gray"]
