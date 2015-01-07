def greeting
	puts "Hello"
end

def add_first_name(firstName)
	puts "Hello #{firstName}!!"
end

def add_full_name(firstName = "Roel", lastName)
	puts "Hello #{firstName + " " + lastName}!!"
end

greeting
add_first_name("Roel")
add_full_name("Cantu")