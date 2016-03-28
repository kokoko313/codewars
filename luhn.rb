def digits_of(n)
 	n.to_s.split('').map! { |s| s.to_i }
end

def luhn_checksum(card_number)

	digits = digits_of(card_number)
	# выбор четных/нечетных
	odd_digits = digits.values_at(*digits.each_index.select(&:odd?))
	even_digits = digits.values_at(*digits.each_index.select(&:even?))
	
	#четные X2 
	even_digits.map! {|i| i*2}
	# выборка больших 9
	beven_digits = even_digits.select{|i| i > 9}.map!{|i| i-9}
	even_digits.delete_if { |a| a > 10 }

	#суммирование
	# классный спопсоб засуммить массив чисел
	total = odd_digits.inject(:+) + beven_digits.inject(:+) + even_digits.inject(:+)
	return total
end

def validate(n)
    puts luhn_checksum(n)%10 == 0
end

validate("891333")

# Given a positive integer of up to 16 digits, return true if it is a valid credit card number, and false if it is not.

# Here is the algorithm:

# If there are an even number of digits, double every other digit starting with the first, and if there are an odd number of digits, double every other digit starting with the second. Another way to think about it is, from the right to left, double every other digit starting with the second to last digit.

# 1714 => [1*, 7, 1*, 4] => [2, 7, 2, 4]

# 12345 => [1, 2*, 3, 4*, 5] => [1, 4, 3, 8, 5]

# 891 => [8, 9*, 1] => [8, 18, 1]
# If a resulting doubled number is greater than 9, replace it with either the sum of it's own digits, or 9 subtracted from it.

#  [8, 18*, 1] => [8, (1+8), 1] => [8, 9, 1]

#  (or)

#  [8, 18*, 1] => [8, (18-9), 1] => [8, 9, 1]
# Sum all of the final digits
#  [8, 9, 1] => 8+9+1 => 18
# Finally, take that sum and divide it by 10. If the remainder equals zero, the original credit card number is valid.

#  18 (modulus) 10 => 8.  

#  8 does not equal 0, so 891 is not a valid credit card number.
