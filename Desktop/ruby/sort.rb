=begin
array = [2,4,3,1,6,5]
i=0
while i<array.size 
	j=0
	while j<array.size 
		if array[i]>array[j+1]
		end
		j+=1
		
	end
	i+=1
	
end
=end
class InstanceVariableExample
  def initialize
    @name = 'Instance Variable'
    @message = 'I am an instance variable of this class'
  end

  def display_name
    puts @name
  end

  def display_message
    puts @message
  end
end

obj = InstanceVariableExample.new

obj.display_name
#=> Instance Variable

obj.display_message