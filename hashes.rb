my_cars = {'car1'=>'BMW', 'car2'=>"Ford"}
my_motos = {:moto1=>"Harley D.", :moto2=>"BMW"}

puts my_motos[:moto1] #Harley D.

my_cars['car1'] = "Ferrari"

puts my_cars.inspect # {"car1"=>"Ferrari", "car2"=>"Ford"}

my_motos[:moto1] = "Ferrari"

puts my_motos.inspect # {:moto1=>"Ferrari", :moto2=>"BMW"}


my_planes = {first_plane: "Boeing", second_plane: "Airbus"}
puts my_planes.inspect # {:first_plane=>"Boeing", :second_plane=>"Airbus"}



customer = {
  name: "Microsoft",
  address: "LLC Washington D.A",
  email: "microsoft@microsoft.com",
  location: "USA"
}

puts "You received a new order from #{customer[:name]} and you have to ship the product to #{customer[:location]}"
# You received a new order from Microsoft and you have to ship the product to USA


puts customer.keys.inspect # [:name, :address, :email, :location]
puts customer.values.inspect # ["Microsoft", "LLC Washington D.A", "microsoft@microsoft.com", "USA"]




puts customer.fetch(:name, "No such key name dude!") # Microsoft
puts customer.fetch(:first_name, "No such a key name dude!") # No such a key name dude!



customer.store(:first_name, "Bill Gates")

puts customer[:first_name] # Bill Gates



# Lets make a small app , lets try to get a hash key's value and if no such key exists then we should store it.

app_hash = {:name=>"Anil", :age=>32}
def no_such_key(hash, key_name, value_for_key)
  hash.store(key_name, value_for_key)
end

puts app_hash.fetch(:location, no_such_key(app_hash, :location, "Warsawa")) # Warsawa
puts app_hash.inspect # {:name=>"Anil", :age=>32, :location=>"Warsawa"}





# ----------------------------------------------------------------------------------------------------------------------


myhash = Hash.new("default value")
puts myhash[:asjdasdsaffwq] # default value
puts myhash.default # default value

myhash.store(:location, "USA")
puts myhash.inspect # {:location=>"USA"}

myhash.delete(:location)

puts myhash.inspect # {}


myhash = {:salary1=>89, :salary2=>32, :salary3=>110}
myhash.delete_if {|k,v| v<100} # {:salary3=>110}

puts myhash.inspect
