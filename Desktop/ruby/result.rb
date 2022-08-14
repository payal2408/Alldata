$student_data = {}
  
	
  def start
  	 exit = true
  	 while exit == true	
	  	 puts " enter the option 1 to 5"
	  	 puts "1 : enter the student_data :"
	  	 puts "2 : display the student_data (roll_no) :"
	  	 puts "3 : show_all student_data :"
	  	 puts "4 : delete student_data :"
	  	 puts "5 : exit :"
	  	 option = gets.chomp.to_i
	  	 case  option
	  	 	when 1
	  	 		student_data
	  	 	when 2
	  	 		show_student_data
	  	 	when 3
	  	 		show_all_student_list
	  	 	when 4
	  	 		delete_result
	  	 	when 5
	  	 		exit=false			
	  	    end
	  	end
    
  end

def student_data 

   student_data = {"name"=> "","roll_no"=> "","total"=> "0","marks"=> {"hindi"=> 0,"english"=> 0,"scince"=> 0,"maths" => 0,"social-scince"=> 0}}

   puts "Enter Student Name"
   student_data["name"] = gets.chomp

   puts "=================================="
    
   puts "Enter Student Roll no"
   student_data["roll_no"] = gets.chomp
    
   puts "=================================="

   puts "Enter out of 100 marks"            
   puts "=================================="                        
   student_data["marks"].each do |key,value|
   	puts "Enter the #{key}  marks"
  	 student_data["marks"][key] = gets.chomp.to_i
  	 	puts "~~~~~~~~~~~" 
   end

   student_data["total"] = student_data["marks"].values.sum 
   $student_data[student_data["roll_no"]] =   student_data
end


def show_student_data
   	puts "Enter the roll_no : "
   	roll_no = gets.chomp
   	student_data = $student_data[roll_no]
    
   	if($student_data.has_key?(roll_no)) 

	   puts " Student name  is :-\t#{student_data["name"]}"
	   puts "==================================" 
	   puts " student Roll no. is:-\t #{student_data["roll_no"]}"
	   puts "==================================" 
	end

   	student_data ["marks"].each do |keys,value|
   	if value.to_i < 33
   		puts "#{key}\t\t#{value}fail"
   	elsif value.to_i >33
   	  	puts"#{keys}\t\t#{value}\tpass"
    else
    	 puts"student are not found"
    end
end
    	puts"total marks are :\t#{student_data["total"]}"
    	
end

def show_all_student_list
	   	puts"show_all_student_list"
	   	$student_data.each do |keys,value|
	   	 puts"#{value["name"]}#{value["roll_no"]}"
	   	 puts"_____"
   		end
end
   
def delete_result
	puts"enter roll no"
	roll_no=gets.chomp
	if($student_data.has_key?(roll_no))
	   	$student_data.delete(roll_no)
	   	puts"student delete"
	else
	   	puts"student not found"
	end
end

start