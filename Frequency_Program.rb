class Frequency_Program
 def self.user_Input()
  puts " How many names do you want to take "
  while  $user_number = Integer(gets.chomp)  rescue ''
    if $user_number.is_a? Integer
     store_Name
    else
     puts "Think of a number "
    end
    break
  end
 end 

 def self.store_Name
  $i = $user_number
  # Create a user array to store the user input
  $array = [];
   while $i>0 do
    # Take The Input From User 
    puts "Enter Yours Name";
    user = gets.chomp
    # Verify the user
     if user.is_a? String
       #add a user
      $array.push(user)
     else
      puts "Think of a String name "
     end
     $i-=1
   end
    # find the frequency of Characters
  frequencyOfChar
 end

 def self.frequencyOfChar
  # Count the frequency of characters
   for i in 0..$array.length
     $num = 1
      # check same name in array
     for j in i+1..$array.length
       if $array[i] == $array[j]
         #swap the value
         $array[j] = $array[j]+"#$num";
         $num += 1;
       end
     end
    end
  # Call print method
  print
 end

 def self.print
  # Printing the sorted array values
  puts "New Sorting Output is"
   for i in 0..$array.length
     puts $array[i]
   end
 end
end

# Calling the user input methods of frequency classs
Frequency_Program.user_Input
