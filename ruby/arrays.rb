a = ["jermaine","subia","dojo","josh"]
b = [1,2,8,6,9,8,10,11]
c= ["Dojo",9]

# shuffle and join
puts a.shuffle.join(',')

# delete
a.delete("jermaine")
puts a

# at
puts b.at(0)

# reverse
puts a.at(1).reverse

puts c.at(0).length

puts a.sort

puts b.slice(1)

puts b.shuffle

puts a.join("-")

puts c.insert(2,3)