puts Time.now # 2023-09-21 11:51:16 +0300


birth_date=Time.local(1991,9,14)
fark = Time.now - birth_date

puts fark # 1010490761.8598189
gun = (fark/86400).round(1) # 11695.5
puts gun

year = (gun/365).round(2)
puts year # 32.04



puts "We are of #{Time.now.wday} of the day of current week" # We are of 4 of Week of the day do not forget it start from monday

puts "We are of #{Time.now.yday} of the day of current year" # We are of 264 of the day of current year




# puts Time.today   # this will throw an error we should use Date for it.

require "date"
puts Date.today # 2023-09-21


# we could do the same with Time

puts Time.now.strftime("%Y-%m-%d") # 2023-09-21




today = Date.today
four_days_later = today + 4
puts four_days_later # 2023-09-25

puts "başlangıç"

today.upto(today+10) do |tarih|
  puts tarih
end

puts "bitiş"

=CODELINE
2023-09-21
2023-09-22
2023-09-23
2023-09-24
2023-09-25
2023-09-26
2023-09-27
2023-09-28
2023-09-29
2023-09-30
2023-10-01
CODELINE
