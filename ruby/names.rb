a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Mikee", :last_name => "Buyco"}
e = {:first_name => "Diana", :last_name => "Manlulu"}

names = [a, b, c, d, e]

puts "You got " + names.count.to_s + " names in the 'names' array"
names.each { |name|puts "The name is "	+ name.values.join(" ")}
