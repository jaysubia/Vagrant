x = {"first_name" => "Jay", "last_name" => "Subia"}

puts x["first_name"], x["last_name"]
puts "Your last name is Subia" if x["last_name"].eql? "Subia"

y = {:first_name => "Jermaine", :last_name => "Hernandez"}
puts "Y is ", y
puts y[:first_name], y[:last_name]

puts "Deleting: first_name"
y.delete :first_name
puts "Y is now", y

if y.has_key? :first_name
	puts "Y has a key called :first_name"
else 
	puts "Y does not have a key called :first_name"
end

if y.has_value? "Hernandez"
	puts "Y has a value called Hernandez"
else 																				
	puts "Y does not have a value called Hernandez"
end