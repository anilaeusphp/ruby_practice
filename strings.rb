puts "Anıl Demir".capitalize  # Anıl demir
puts "Anıl Demir    ".size # 14
puts "Anıl Demir".chomp.size # 10

puts "Anıl Demir".chop  # Anıl Demi      as you see it removes the last indexed element.

puts "Anıl Demir".clear.size # 0

puts "Anıl Demir".chomp("mir")  # Anıl De        mir will be chopped

puts "Anıl Demir".count "n"   # 1


"Anıl Demir".each_char{|c| print c, "-"}  # A-n-ı-l- -D-e-m-i-r-%

puts


puts "Anıl Demir".gsub("ı","xOr")  # AnxOrl Demir


puts "Anıl Demir".slice(2..9) # ıl Demir


puts "Anıl Demir".sub(/[ıei]/, 'xXx[/0]xXx')     # AnxXx[/0]xXxl Demir
