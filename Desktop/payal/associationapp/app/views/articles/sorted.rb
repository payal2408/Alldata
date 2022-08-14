 array = [2,4,3,1,6,5]
 (0..a.size).each do |i|
 	k=0
 	array.each do |j|
 		if array[i]>array[j] then
 			k = array[i]
 			array[i] = array[j]
 			array[j] = k
 		end
 	end
end