#To calculate the check digit of an ISBN13 barcode
class Isbn_barcode
   
    def self.user_Input
     #Take the input form user       
     puts "Enter The ISBN13 Barcod"
     while  $isbn = Integer(gets.chomp)  rescue ''
      if $isbn.is_a? Integer
        $barcode = $isbn.to_s.split(//)
        if($barcode.length<=12)
          check_digits
          break
        else
          puts "ISBN can only have 13 integers, Think number which content 13 integer"   
        end        
      else
       puts "Think of a number "
      end
     end
    end  

    def self.check_digits 
     #Conver integer into an array    
     sum =0
     altnum =1
     for i in 0..$barcode.length-1
      #Take each digit, from right to left and multiply them alternatively by 1 and 3  
      sum +=  $barcode[i].to_i * altnum
      if altnum ==1 
       altnum =3
      elsif altnum ==3
       altnum = 1
      end  
     end
     # Take mod 10 of the summed figure
     sum =  sum %10
     #  Subtract 10 and if the end number is 10, make it 0
     sub = 10 - sum;
     # Concatenate the number at the end of the given number to provide output
     $isbn = $isbn*10 + sub;
     #Print the value
     puts "Therefore the complete ISBN is:#{$isbn}";
    end
end
#call isbn_barcode method user_input
Isbn_barcode.user_Input