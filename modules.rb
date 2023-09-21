module Module1
  def self.yazdir
    puts "I am a module named Module 1"
  end
end

module Module2
  def self.yazdir
    puts "I am a module named Module 2"
  end
end


Module1::yazdir # I am a module named Module 1



module Printer
  VERSION=1.0

  class Fax
    def fax_sender(text)
      puts "Fax has been sent #{text}"
    end

    def self.version
      puts "You are currently on version #{VERSION}"
    end
  end
end

Printer::Fax.version  # You are currently on version 1.0
new_fax = Printer::Fax.new
new_fax.fax_sender(" smoothly") # Fax has been sent  smoothly






module Animals
  # ...
end

class Dog
  include Animals
end

class Cat
  extend Animals
end
