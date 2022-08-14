rows = 7
columns = 7
for row in 1..rows
	for column in 1..columns
		if row == 1 || row == 7 || column == 1 || column == 7 || column == row
			print "*"
		elsif column == 1 || column == 3 || column == 4 || column == 5 || row == 3
			print "-"
		else
			print "*"
		end			
	end
	print "\n"
end

