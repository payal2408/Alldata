# a = [1,2,3,4]
#  b = []
# # i=0
# # while i < a.size	
# # 	j = 0
# # 	mul = 1
# # 	while j < a.size
# # 		if i == j
# # 			next
# # 		else
# # 			mul = mul * a[j]
# # 		end
# # 	end
# # 	b << mul
# # end
# # puts b

# for x in 1..a.size
# 	muls = 1
# 	for y in 1..a.size
# 		next if x == y
# 		muls = muls.to_i * a[y].to_i	
# 	end
# 	b << muls
# end
# puts "#{b}"

class Customer
   def initialize(name, addr)
      @cust_id = 5
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
end

class Student
	include Customer
	def display_show()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   	end
end

cust1 = Customer.new("John", "johny");
student = Student.new
student.display_show()
