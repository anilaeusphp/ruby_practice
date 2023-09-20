def salary(amount, increasement)
  increased_salary = amount +  (amount * increasement/100)
end

new_salary = salary(34000, 25)
puts new_salary  # 42500




def salary(amount, increasement)
  increased_salary = amount +  (amount * increasement/100)
  return amount, increased_salary
end

new_salary_array = salary(34500,15)
puts "Before increasement your salary was #{new_salary_array[0]} and now it is #{new_salary_array[1]}" # Before increasement your salary was 34500 and now it is 39675









class Helloer
  class << self
    def hadisende
      puts "Hadi sende"
    end

    def olmadibu
      puts "Olmuş gibi"
    end
  end
end


Helloer.hadisende # Hadi sende

Helloer.olmadibu # Olmuş gibi
