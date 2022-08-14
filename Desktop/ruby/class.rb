require 'byebug'
# class Test
#   def active
#     @active
#     puts "jbfkwfbkb"
#   end

#   def active=name
#     @active = name
#     puts "hello"
#   end

#   def make_active
#     active = true
#   end
# end
# a = Test.new
# a.active = 'payal'
user = "CC"
hash = {1=>"AA",2=> "BB",3=>"CC AB", 4=> "DD"}
byebug
hash.each do |key,value| 
  if value.match(user)
    hash[key] = user
  end
  byebug
end
puts hash