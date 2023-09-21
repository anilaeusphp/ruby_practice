class Araba
  attr_accessor :kapi, :motor__hacmi, :vites

  def calistir

  end
end

class Tiagra
  attr_accessor :guc
  attr_reader :model

  def initialize(model)
    @model = model
  end

  def calistir
    puts "araç çalışmayı başladı"
  end
end



class A
  attr_accessor :power
  attr_reader :god

  protected
  def speller
    puts "i am spelling"
  end
end


class B<A
end

b = B.new

puts b.power
b.power = "Powerful" # Powerful
puts b.power

b.god
