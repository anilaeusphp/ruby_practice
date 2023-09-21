arr = ["apple", "orage", "parcley", "melon"]

# first way of doing blocks
arr.collect! { |v| v += "!"}
puts arr.inspect # ["apple!", "orage!", "parcley!", "melon!"]


# second way of doing blocks
arr.collect! do |v|
  v += "#"
end
puts arr.inspect # ["apple!#", "orage!#", "parcley!#", "melon!#"]


# third way of doing blocks

def some_method(&a_func)
  a_func.call
end

some_method { puts "There we go !"}  # There we go !
# if we use ampersand to a method argument then we need to provide a proc for it. So in this case a_func has to be a proc like.


def some_safe_method(&afunk)
  if block_given?
    afunk.call
  else
    puts "Come on you need to give it a block like argument to run this func!"
  end
end

some_safe_method # Come on you need to give it a block like argument to run this func!

some_safe_method { puts "Success"} # Success






data =[123,123,124,125,5,436,347,4558,56956,8546,23]

new_data = []

def add_one_to_evens(num)
  num += 1 if num.even?
  num
end

data.each do |num|
  if num.even?
    new_data << add_one_to_evens(num)
  end
end

puts new_data.inspect # [125, 437, 4559, 56957, 8547]



# ---------------------------------------------


class Array
  def process(&arg)
    self.each_with_index {|e,i| self[i] = arg.call(e)}
  end
end

my_arr = [1,2,3,4,5,6].process {|e| e += 13}
puts my_arr.inspect # [14, 15, 16, 17, 18, 19]


# ------------------------------------------------------



def some_code
  puts "Method process"
  yield # it will expect to receive a proc then it will run it
  puts "Another process"
  yield
end


some_code {puts "Here we go Anil"}

<<SOMECODE
Method process
Here we go Anil
Another process
Here we go Anil
SOMECODE



def another_yield
  puts "Starting to work"
  yield 13
  yield 15
  puts "End to work"
end

another_yield { |arg| puts arg*33 }

<<CODE
Starting to work
429
495
End to work
CODE
