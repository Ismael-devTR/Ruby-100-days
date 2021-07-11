# Given the following data structures, write a program that copies the information from 
# the array into the empty hash that applies to the correct person.


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe_Smith" => {}, "Sally_Johnson" => {}}


# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts.each_with_index do |(name,value), index|
	contact_data[index].each_with_index { |items, index|
		# p name+items

		value[:email] = items if index == 0
		value[:address] = items if index == 1
		value[:phone] = items if index == 2


	}
end

p contacts["Joe_Smith"][:email]
p contacts["Sally_Johnson"][:phone]