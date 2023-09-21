puts 3.is_a?(Integer) # true

puts 3.is_a?(Numeric) # true

puts 3.is_a?(String) # false

def calculate_total(x,y)
  unless x.is_a?(Integer) || y.is_a?(Integer)
    raise(TypeError, "arguments has to bee integer however they are not of type Integer")
  else
    puts x+y
  end
end


# calculate_total 5,6 # 11
# calculate_total(5, "6") # error


def calculate_total2(x,y)
  unless x.is_a?(Integer) || y.is_a?(Integer)
    fail(TypeError, "arguments has to bee integer however they are not of type Integer")
  else
    puts x+y
  end
end


 # calculate_total2 5,6 # 11
 # calculate_total(5, "6") # error



 class CustomExcetionim < TypeError
  def message
    "Bu hatayı kabul edemem kusra bakma!"
  end
 end



def calculate_total3(x,y)
  raise(CustomExcetionim)
end

# calculate_total3(3,4) # exceptions.rb:43:in `calculate_total3': Bu hatayı kabul edemem kusra bakma! (CustomExcetionim)







def topla(x,y)
puts x+y
rescue
  puts "Both argument has to be numerical" unless !x.is_a?(Numeric) || y.is_a?(Numeric)
end

topla(5,"3sa") # Both argument has to be numerical



def topla2(x,y)
  puts x/y
rescue TypeError
  puts "Arguments must be type of Integer"

rescue ZeroDivisionError
  puts "Second argument cannot be 0"
end

topla2(5,0) # Second argument cannot be 0

def topla3(x,y)
  unless y==0
    puts x/y
  else
    raise(ZeroDivisionError, "Sıfıra bölme hatası raiselendi")
  end
rescue TypeError
  puts "Arguments must be type of Integer"

rescue ZeroDivisionError
  puts "Catched a raise for ZeroDivisionError"
ensure
  puts "This will always work"
end

topla3(23123,0) # Catched a raise for ZeroDivisionError
