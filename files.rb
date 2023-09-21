File.open("veriler.txt", "r") do |f|
  f.each_line do |line|
    puts line
  end
end


<<-CODELINE
First Line
Second Line
Third Line
CODELINE


grocery = ["Apple", "PoMeGrante", "Pear", "Earl Gray"]
File.open("veriler.txt", "a") do |f|
  grocery.each do |item|
    f.write item + "\n"
  end
end



File.open("veriler2.txt", "r").each(",") do |line| # here each(",") we said we will use , as a seperator not \n by default
  puts line
end

<<-CODELINE
Elma,
 Armut,
 Kahve,
 Benzin,
 Gezi

CODELINE



def create_file(file_name)
  begin
    file = File.open(file_name, "w:utf-8")
    file.puts "First Line"
    file << "Second Line\n"
    file << "Third Line\n"
  ensure
    file.close
  end
end
<<-DOC
create_file("agamemnon2.txt")



file_to_read = File.open("veriler.txt", "r:utf-8")
until file_to_read.eof?
  puts file_to_read.gets
end
DOC



# File.rename("veriler.txt", "data.txt")


# How to get full path of a file

# puts File.expand_path("veriler.txt") # /home/rubyongainz/Desktop/ruby_practice/veriler.txt





require "fileutils"
FileUtils.cp("veriler2.txt","data2.txt")
Dir.exist?("new folder")
FileUtils.mkdir("newest folder")
FileUtils.rm

Dir.pwd
